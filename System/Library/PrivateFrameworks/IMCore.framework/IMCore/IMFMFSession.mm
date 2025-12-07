@interface IMFMFSession
+ (id)sharedInstance;
- (BOOL)_canShareLocationWithFMLHandle:(id)handle isFromGroup:(BOOL)group;
- (BOOL)allChatParticipantsFollowingMyLocation:(id)location;
- (BOOL)allChatParticipantsSharingLocationWithMe:(id)me;
- (BOOL)chatHasParticipantsFollowingMyLocation:(id)location;
- (BOOL)chatHasParticipantsSharingLocationWithMe:(id)me;
- (BOOL)chatHasSiblingParticipantsSharingLocationWithMe:(id)me;
- (BOOL)disableLocationSharing;
- (BOOL)findMyHandleIsFollowingMyLocation:(id)location;
- (BOOL)findMyHandleIsSharingLocationWithMe:(id)me;
- (BOOL)handleIsFollowingMyLocation:(id)location;
- (BOOL)handleIsSharingLocationWithMe:(id)me;
- (BOOL)imIsProvisionedForLocationSharing;
- (BOOL)restrictLocationSharing;
- (Class)__FMFSessionClass;
- (Class)__FMLSessionClass;
- (IMFMFSession)init;
- (id)_accountStore;
- (id)_bestAccountForAddresses:(id)addresses;
- (id)_callerIDForChat:(id)chat;
- (id)_dateFromShareDuration:(int64_t)duration;
- (id)allSiblingFindMyHandlesForChat:(id)chat;
- (id)findMyHandlesForChat:(id)chat;
- (id)findMyHandlesSharingLocationWithMe;
- (id)findMyLocationForFindMyHandle:(id)handle;
- (id)findMyLocationForHandle:(id)handle;
- (id)findMyLocationForHandleOrSibling:(id)sibling;
- (id)findMyURLForChat:(id)chat;
- (id)fmfGroupIdGroup;
- (id)fmfGroupIdOneToOne;
- (id)timedOfferExpirationForChat:(id)chat;
- (void)_accountStoreDidChangeNotification:(id)notification;
- (void)_configureFindMyLocateSession;
- (void)_initializeFindMySessionIfInAllowedProcess;
- (void)_postNotification:(id)notification object:(id)object userInfo:(id)info;
- (void)_setUpFindMyLocateSessionCallbacks;
- (void)_startFMLSessionMonitoring;
- (void)_startRefreshingLocationForFMLHandles:(id)handles priority:(int64_t)priority isFromGroup:(BOOL)group;
- (void)_startSharingWithFMFHandles:(id)handles inChat:(id)chat untilDate:(id)date;
- (void)_startSharingWithFMLHandles:(id)handles inChat:(id)chat withDuration:(int64_t)duration;
- (void)_stopSharingWithFMFHandles:(id)handles inChat:(id)chat;
- (void)_stopSharingWithFMLHandles:(id)handles inChat:(id)chat;
- (void)_stopTrackingLocationForFMLHandles:(id)handles priority:(int64_t)priority isFromGroup:(BOOL)group;
- (void)_updateActiveDevice;
- (void)dealloc;
- (void)didChangeActiveLocationSharingDevice:(id)device;
- (void)didReceiveLocation:(id)location;
- (void)didStartAbilityToGetLocationForHandle:(id)handle;
- (void)didStartSharingMyLocationWithHandle:(id)handle;
- (void)didStopAbilityToGetLocationForHandle:(id)handle;
- (void)didStopSharingMyLocationWithHandle:(id)handle;
- (void)friendshipRequestReceived:(id)received;
- (void)friendshipWasRemoved:(id)removed;
- (void)makeThisDeviceActiveDevice;
- (void)refreshLocationForChat:(id)chat;
- (void)refreshLocationForHandle:(id)handle inChat:(id)chat;
- (void)sendMappingPacket:(id)packet toHandle:(id)handle;
- (void)startSharingWithChat:(id)chat withDuration:(int64_t)duration;
- (void)startSharingWithHandle:(id)handle inChat:(id)chat withDuration:(int64_t)duration;
- (void)startTrackingLocationForChat:(id)chat;
- (void)startTrackingLocationForHandle:(id)handle;
- (void)stopSharingWithChat:(id)chat;
- (void)stopSharingWithHandle:(id)handle inChat:(id)chat;
- (void)stopTrackingLocationForChat:(id)chat;
- (void)stopTrackingLocationForHandle:(id)handle;
@end

@implementation IMFMFSession

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:0 object:0];

  v4.receiver = self;
  v4.super_class = IMFMFSession;
  [(IMFMFSession *)&v4 dealloc];
}

- (IMFMFSession)init
{
  v5.receiver = self;
  v5.super_class = IMFMFSession;
  v2 = [(IMFMFSession *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IMFMFSession *)v2 _initializeFindMySessionIfInAllowedProcess];
  }

  return v3;
}

- (void)_initializeFindMySessionIfInAllowedProcess
{
  deviceIsLockedDown = [MEMORY[0x1E69A8020] deviceIsLockedDown];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isWaldoEnabled = [mEMORY[0x1E69A8070] isWaldoEnabled];

  if (IMIsRunningInImagent())
  {
    v6 = 1;
    if (deviceIsLockedDown)
    {
LABEL_13:
      v14 = IMLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E2C38();
      }

LABEL_15:

      return;
    }
  }

  else
  {
    v6 = IMIsRunningInMessagesUIProcess();
    if (deviceIsLockedDown)
    {
      goto LABEL_13;
    }
  }

  if (((isWaldoEnabled ^ 1 | v6) & 1) == 0)
  {
    goto LABEL_13;
  }

  mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isFindMyLocateSessionEnabled = [mEMORY[0x1E69A8070]2 isFindMyLocateSessionEnabled];

  v9 = IMOSLoggingEnabled();
  if (isFindMyLocateSessionEnabled)
  {
    if (v9)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "FindMyLocateSession is enabled. Attempting to configure the session.", buf, 2u);
      }
    }

    __FMLSessionClass = [(IMFMFSession *)self __FMLSessionClass];
    if (__FMLSessionClass)
    {
      v12 = objc_alloc_init(__FMLSessionClass);
      fmlSession = self->_fmlSession;
      self->_fmlSession = v12;

      [(IMFMFSession *)self setFmfProvisionedState:0];
      [(IMFMFSession *)self _configureFindMyLocateSession];
      return;
    }

    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E2C6C();
    }

    goto LABEL_15;
  }

  if (v9)
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v21 = 0;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "FindMyLocateSession is disabled. Attempting to configure the legacy FMFSession.", v21, 2u);
    }
  }

  __FMFSessionClass = [(IMFMFSession *)self __FMFSessionClass];
  if (__FMFSessionClass)
  {
    v17 = [[__FMFSessionClass alloc] initWithDelegate:self];
    session = self->_session;
    self->_session = v17;

    v19 = self->_session;
    mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
    [(FMFSession *)v19 setDelegateQueue:mainQueue];

    [(IMFMFSession *)self _updateActiveDevice];
    [(IMFMFSession *)self setFmfProvisionedState:0];
  }
}

- (void)_configureFindMyLocateSession
{
  [(IMFMFSession *)self _setUpFindMyLocateSessionCallbacks];

  MEMORY[0x1EEE66B58](self, sel__startFMLSessionMonitoring);
}

- (void)_setUpFindMyLocateSessionCallbacks
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isFindMyLocateSessionEnabled = [mEMORY[0x1E69A8070] isFindMyLocateSessionEnabled];

  if (isFindMyLocateSessionEnabled)
  {
    objc_initWeak(&location, self);
    fmlSession = [(IMFMFSession *)self fmlSession];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      fmlSession2 = [(IMFMFSession *)self fmlSession];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = sub_1A83ACCC8;
      v21[3] = &unk_1E78142C0;
      objc_copyWeak(&v22, &location);
      [fmlSession2 setLocationUpdateCallback:v21];

      objc_destroyWeak(&v22);
    }

    else
    {
      v8 = IMLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E2CA0();
      }
    }

    fmlSession3 = [(IMFMFSession *)self fmlSession];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      fmlSession4 = [(IMFMFSession *)self fmlSession];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1A83ACDF0;
      v19[3] = &unk_1E7814310;
      objc_copyWeak(&v20, &location);
      [fmlSession4 setFriendshipUpdateCallback:v19];

      objc_destroyWeak(&v20);
    }

    else
    {
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E2CD4();
      }
    }

    fmlSession5 = [(IMFMFSession *)self fmlSession];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      fmlSession6 = [(IMFMFSession *)self fmlSession];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_1A83AD040;
      v17[3] = &unk_1E7814338;
      objc_copyWeak(&v18, &location);
      [fmlSession6 setMeDeviceUpdateCallback:v17];

      objc_destroyWeak(&v18);
    }

    else
    {
      v16 = IMLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E2D08();
      }
    }

    objc_destroyWeak(&location);
  }
}

- (void)_startFMLSessionMonitoring
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isFindMyLocateSessionEnabled = [mEMORY[0x1E69A8070] isFindMyLocateSessionEnabled];

  if (isFindMyLocateSessionEnabled)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "_startFMLSessionMonitoring: kicking off initial updates.", buf, 2u);
      }
    }

    fmlSession = [(IMFMFSession *)self fmlSession];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      fmlSession2 = [(IMFMFSession *)self fmlSession];
      [fmlSession2 startUpdatingFriendsWithInitialUpdates:0 completion:&unk_1F1B6F560];
    }

    else
    {
      fmlSession2 = IMLogHandleForCategory();
      if (os_log_type_enabled(fmlSession2, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E2DB4();
      }
    }

    fmlSession3 = [(IMFMFSession *)self fmlSession];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      fmlSession4 = [(IMFMFSession *)self fmlSession];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1A83AD5F4;
      v19[3] = &unk_1E7814380;
      v19[4] = self;
      [fmlSession4 getFriendsSharingLocationsWithMeWithCompletion:v19];
    }

    else
    {
      fmlSession4 = IMLogHandleForCategory();
      if (os_log_type_enabled(fmlSession4, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E2DE8();
      }
    }

    fmlSession5 = [(IMFMFSession *)self fmlSession];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      fmlSession6 = [(IMFMFSession *)self fmlSession];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = sub_1A83AD7D0;
      v18[3] = &unk_1E7814380;
      v18[4] = self;
      [fmlSession6 getFriendsFollowingMyLocationWithCompletion:v18];
    }

    else
    {
      fmlSession6 = IMLogHandleForCategory();
      if (os_log_type_enabled(fmlSession6, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E2DE8();
      }
    }

    fmlSession7 = [(IMFMFSession *)self fmlSession];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      fmlSession8 = [(IMFMFSession *)self fmlSession];
      [fmlSession8 startMonitoringActiveLocationSharingDeviceChangeWithCompletion:&unk_1F1B6F580];
    }

    else
    {
      fmlSession8 = IMLogHandleForCategory();
      if (os_log_type_enabled(fmlSession8, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E2E1C();
      }
    }
  }
}

+ (id)sharedInstance
{
  if (qword_1ED767968 != -1)
  {
    sub_1A84E2F30();
  }

  v3 = qword_1ED767908;

  return v3;
}

- (BOOL)restrictLocationSharing
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isFindMyLocateSessionEnabled = [mEMORY[0x1E69A8070] isFindMyLocateSessionEnabled];

  if (!isFindMyLocateSessionEnabled)
  {
    __FMFSessionClass = [(IMFMFSession *)self __FMFSessionClass];
    if (__FMFSessionClass)
    {
      goto LABEL_3;
    }

    return 0;
  }

  __FMFSessionClass = [(IMFMFSession *)self __FMLSessionClass];
  if (!__FMFSessionClass)
  {
    return 0;
  }

LABEL_3:

  return MEMORY[0x1EEE66B58](__FMFSessionClass, sel_FMFRestricted);
}

- (BOOL)disableLocationSharing
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isFindMyLocateSessionEnabled = [mEMORY[0x1E69A8070] isFindMyLocateSessionEnabled];

  if (!isFindMyLocateSessionEnabled)
  {
    __FMFSessionClass = [(IMFMFSession *)self __FMFSessionClass];
    if (__FMFSessionClass)
    {
      if (![(objc_class *)__FMFSessionClass FMFAllowed])
      {
        goto LABEL_4;
      }

LABEL_7:
      v6 = ![(IMFMFSession *)self imIsProvisionedForLocationSharing];
      return (v6 | [MEMORY[0x1E69A8020] deviceIsLockedDown]) & 1;
    }

LABEL_8:
    LOBYTE(v6) = 0;
    return (v6 | [MEMORY[0x1E69A8020] deviceIsLockedDown]) & 1;
  }

  __FMLSessionClass = [(IMFMFSession *)self __FMLSessionClass];
  if (!__FMLSessionClass)
  {
    goto LABEL_8;
  }

  if (([(objc_class *)__FMLSessionClass FMFAllowed]& 1) != 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  LOBYTE(v6) = 1;
  return (v6 | [MEMORY[0x1E69A8020] deviceIsLockedDown]) & 1;
}

- (BOOL)imIsProvisionedForLocationSharing
{
  v18 = *MEMORY[0x1E69E9840];
  if (![(IMFMFSession *)self fmfProvisionedState])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self];

    _accountStore = [(IMFMFSession *)self _accountStore];
    aa_primaryAppleAccountWithPreloadedDataclasses = [_accountStore aa_primaryAppleAccountWithPreloadedDataclasses];
    if (aa_primaryAppleAccountWithPreloadedDataclasses)
    {
      v6 = *MEMORY[0x1AC56C560]("ACAccountDataclassShareLocation", @"Accounts");
      if (v6)
      {
        if ([aa_primaryAppleAccountWithPreloadedDataclasses isProvisionedForDataclass:v6])
        {
          v7 = 1;
        }

        else
        {
          v7 = 2;
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v8 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            LOWORD(v14) = 0;
            _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "IMFMFSession - Failed to weak link ACAccountDataclassShareLocation", &v14, 2u);
          }
        }

        v7 = 1;
      }
    }

    else
    {
      v7 = 1;
    }

    [(IMFMFSession *)self setFmfProvisionedState:v7];
    v9 = *MEMORY[0x1AC56C560]("ACAccountStoreDidChangeNotification", @"Accounts");
    if (v9)
    {
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel__accountStoreDidChangeNotification_ name:v9 object:0];
    }

    else if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "IMFMFSession - Failed to weak link ACAccountStoreDidChangeNotification", &v14, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = 136315394;
        v15 = "[IMFMFSession imIsProvisionedForLocationSharing]";
        v16 = 2048;
        v17 = v7;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "%s provisioned state generated is %lu", &v14, 0x16u);
      }
    }
  }

  return [(IMFMFSession *)self fmfProvisionedState]== 1;
}

- (id)_accountStore
{
  if (qword_1EB2E9D58 != -1)
  {
    sub_1A84E2F44();
  }

  v3 = qword_1EB2E9D60;

  return v3;
}

- (void)_accountStoreDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Account store did change, invalidating FMF provision state", v6, 2u);
    }
  }

  [(IMFMFSession *)self setFmfProvisionedState:0];
}

- (id)findMyHandlesForChat:(id)chat
{
  v18 = *MEMORY[0x1E69E9840];
  participants = [chat participants];
  v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(participants, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = participants;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) ID];
        v11 = [IMFindMyHandle handleWithIdentifier:v10];

        if (v11)
        {
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)findMyURLForChat:(id)chat
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(IMFMFSession *)self findMyHandlesForChat:chat];
  v4 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        fmfHandle = [v10 fmfHandle];

        if (fmfHandle)
        {
          fmfHandle2 = [v10 fmfHandle];
          identifier = [fmfHandle2 identifier];
          [v4 addObject:identifier];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v14 = [v4 componentsJoinedByString:{@", "}];
  }

  else
  {
    v14 = &stru_1F1B76F98;
  }

  v15 = MEMORY[0x1E696AEC0];
  uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
  v17 = [(__CFString *)v14 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];
  v18 = [v15 stringWithFormat:@"findmy://fr/%@", v17];

  v19 = [MEMORY[0x1E695DFF8] URLWithString:v18];

  return v19;
}

- (id)allSiblingFindMyHandlesForChat:(id)chat
{
  v17 = *MEMORY[0x1E69E9840];
  participants = [chat participants];
  v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(participants, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = participants;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        findMySiblingHandles = [*(*(&v12 + 1) + 8 * i) findMySiblingHandles];
        [v4 unionSet:findMySiblingHandles];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)sendMappingPacket:(id)packet toHandle:(id)handle
{
  v17 = *MEMORY[0x1E69E9840];
  packetCopy = packet;
  handleCopy = handle;
  v8 = IMLocationLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = packetCopy;
    v15 = 2112;
    v16 = handleCopy;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "Forwarding mapping packet: %@ to daemon for ID: %@", &v13, 0x16u);
  }

  v9 = +[IMDaemonController sharedController];
  remoteDaemon = [v9 remoteDaemon];
  identifier = [handleCopy identifier];
  establishingAccountID = [(IMFMFSession *)self establishingAccountID];
  [remoteDaemon sendMappingPacket:packetCopy toHandle:identifier account:establishingAccountID];
}

- (void)_startRefreshingLocationForFMLHandles:(id)handles priority:(int64_t)priority isFromGroup:(BOOL)group
{
  groupCopy = group;
  v23 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"NO";
      *buf = 138412802;
      v18 = handlesCopy;
      if (groupCopy)
      {
        v10 = @"YES";
      }

      v19 = 2048;
      priorityCopy = priority;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "_startRefreshingLocationForFMLHandles handles: %@, priority: %ld, isFromGroup: %@", buf, 0x20u);
    }
  }

  if ([handlesCopy count] && (-[IMFMFSession fmlSession](self, "fmlSession"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_opt_respondsToSelector(), v11, (v12 & 1) != 0))
  {
    fmlSession = [(IMFMFSession *)self fmlSession];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1A83AE874;
    v15[3] = &unk_1E78143A8;
    v16 = handlesCopy;
    [fmlSession startRefreshingLocationForHandles:v16 priority:0 isFromGroup:groupCopy reverseGeocode:1 completion:v15];

    v14 = v16;
  }

  else
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E2F58();
    }
  }
}

- (void)startTrackingLocationForHandle:(id)handle
{
  v15[1] = *MEMORY[0x1E69E9840];
  findMyHandle = [handle findMyHandle];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isFindMyLocateSessionEnabled = [mEMORY[0x1E69A8070] isFindMyLocateSessionEnabled];

  if (isFindMyLocateSessionEnabled)
  {
    fmlHandle = [findMyHandle fmlHandle];

    if (fmlHandle)
    {
      fmlHandle2 = [findMyHandle fmlHandle];
      v15[0] = fmlHandle2;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      [(IMFMFSession *)self _startRefreshingLocationForFMLHandles:v9 priority:0 isFromGroup:0];
    }
  }

  else
  {
    fmfHandle = [findMyHandle fmfHandle];

    if (fmfHandle)
    {
      session = [(IMFMFSession *)self session];
      v12 = MEMORY[0x1E695DFD8];
      fmfHandle2 = [findMyHandle fmfHandle];
      v14 = [v12 setWithObjects:{fmfHandle2, 0}];
      [session addHandles:v14];
    }
  }
}

- (void)startTrackingLocationForChat:(id)chat
{
  chatCopy = chat;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "", v13, 2u);
    }
  }

  v6 = [(IMFMFSession *)self allSiblingFindMyHandlesForChat:chatCopy];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isFindMyLocateSessionEnabled = [mEMORY[0x1E69A8070] isFindMyLocateSessionEnabled];

  if (isFindMyLocateSessionEnabled)
  {
    __im_fmlHandles = [v6 __im_fmlHandles];
    chatStyle = [chatCopy chatStyle];
    if ([__im_fmlHandles count])
    {
      v11 = chatStyle != 45;
      allObjects = [__im_fmlHandles allObjects];
      [(IMFMFSession *)self _startRefreshingLocationForFMLHandles:allObjects priority:0 isFromGroup:v11];
LABEL_10:
    }
  }

  else
  {
    __im_fmlHandles = [v6 __im_fmfHandles];
    if ([__im_fmlHandles count])
    {
      allObjects = [(IMFMFSession *)self session];
      [allObjects addHandles:__im_fmlHandles];
      goto LABEL_10;
    }
  }
}

- (void)_stopTrackingLocationForFMLHandles:(id)handles priority:(int64_t)priority isFromGroup:(BOOL)group
{
  groupCopy = group;
  v23 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"NO";
      *buf = 138412802;
      v18 = handlesCopy;
      if (groupCopy)
      {
        v10 = @"YES";
      }

      v19 = 2048;
      priorityCopy = priority;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "_stopTrackingLocationForFMLHandles handles: %@, priority: %ld, isFromGroup: %@", buf, 0x20u);
    }
  }

  if ([handlesCopy count] && (-[IMFMFSession fmlSession](self, "fmlSession"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_opt_respondsToSelector(), v11, (v12 & 1) != 0))
  {
    fmlSession = [(IMFMFSession *)self fmlSession];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1A83AEE74;
    v15[3] = &unk_1E78143A8;
    v16 = handlesCopy;
    [fmlSession stopRefreshingLocationForHandles:v16 priority:priority isFromGroup:groupCopy completion:v15];

    v14 = v16;
  }

  else
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E2F58();
    }
  }
}

- (void)stopTrackingLocationForHandle:(id)handle
{
  v15[1] = *MEMORY[0x1E69E9840];
  findMyHandle = [handle findMyHandle];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isFindMyLocateSessionEnabled = [mEMORY[0x1E69A8070] isFindMyLocateSessionEnabled];

  if (isFindMyLocateSessionEnabled)
  {
    fmlHandle = [findMyHandle fmlHandle];

    if (fmlHandle)
    {
      fmlHandle2 = [findMyHandle fmlHandle];
      v15[0] = fmlHandle2;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      [(IMFMFSession *)self _stopTrackingLocationForFMLHandles:v9 priority:0 isFromGroup:0];
    }
  }

  else
  {
    fmfHandle = [findMyHandle fmfHandle];

    if (fmfHandle)
    {
      session = [(IMFMFSession *)self session];
      v12 = MEMORY[0x1E695DFD8];
      fmfHandle2 = [findMyHandle fmfHandle];
      v14 = [v12 setWithObjects:{fmfHandle2, 0}];
      [session removeHandles:v14];
    }
  }
}

- (void)stopTrackingLocationForChat:(id)chat
{
  chatCopy = chat;
  v4 = [(IMFMFSession *)self allSiblingFindMyHandlesForChat:?];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isFindMyLocateSessionEnabled = [mEMORY[0x1E69A8070] isFindMyLocateSessionEnabled];

  if (!isFindMyLocateSessionEnabled)
  {
    __im_fmfHandles = [v4 __im_fmfHandles];
    if (![__im_fmfHandles count])
    {
      goto LABEL_8;
    }

    session = [(IMFMFSession *)self session];
    [session removeHandles:__im_fmfHandles];
    goto LABEL_7;
  }

  __im_fmfHandles = [v4 __im_fmlHandles];
  chatStyle = [chatCopy chatStyle];
  if ([__im_fmfHandles count])
  {
    fmlSession = [(IMFMFSession *)self fmlSession];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = chatStyle != 45;
      session = [__im_fmfHandles allObjects];
      [(IMFMFSession *)self _stopTrackingLocationForFMLHandles:session priority:0 isFromGroup:v11];
LABEL_7:
    }
  }

LABEL_8:
}

- (id)_dateFromShareDuration:(int64_t)duration
{
  if (duration == 1)
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    date = [MEMORY[0x1E695DF00] date];
    v3 = [currentCalendar nextDateAfterDate:date matchingUnit:32 value:4 options:1024];
  }

  else if (duration)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:3600.0];
  }

  return v3;
}

- (void)startSharingWithHandle:(id)handle inChat:(id)chat withDuration:(int64_t)duration
{
  handleCopy = handle;
  v8 = MEMORY[0x1E69A8070];
  chatCopy = chat;
  sharedFeatureFlags = [v8 sharedFeatureFlags];
  isFindMyLocateSessionEnabled = [sharedFeatureFlags isFindMyLocateSessionEnabled];

  if (isFindMyLocateSessionEnabled)
  {
    findMyHandle = [handleCopy findMyHandle];
    fmlHandle = [findMyHandle fmlHandle];

    if (fmlHandle)
    {
      [MEMORY[0x1E695DFD8] setWithObject:fmlHandle];
    }

    else
    {
      [MEMORY[0x1E695DFD8] set];
    }
    fmfHandle = ;
    [(IMFMFSession *)self _startSharingWithFMLHandles:fmfHandle inChat:chatCopy withDuration:duration];
  }

  else
  {
    fmlHandle = [(IMFMFSession *)self _dateFromShareDuration:duration];
    findMyHandle2 = [handleCopy findMyHandle];
    fmfHandle = [findMyHandle2 fmfHandle];

    if (fmfHandle)
    {
      [MEMORY[0x1E695DFD8] setWithObject:fmfHandle];
    }

    else
    {
      [MEMORY[0x1E695DFD8] set];
    }
    v16 = ;
    [(IMFMFSession *)self _startSharingWithFMFHandles:v16 inChat:chatCopy untilDate:fmlHandle];

    chatCopy = v16;
  }
}

- (void)stopSharingWithHandle:(id)handle inChat:(id)chat
{
  v14[1] = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  v7 = MEMORY[0x1E69A8070];
  handleCopy = handle;
  sharedFeatureFlags = [v7 sharedFeatureFlags];
  isFindMyLocateSessionEnabled = [sharedFeatureFlags isFindMyLocateSessionEnabled];

  findMyHandle = [handleCopy findMyHandle];

  if (isFindMyLocateSessionEnabled)
  {
    fmlHandle = [findMyHandle fmlHandle];

    if (fmlHandle)
    {
      v14[0] = fmlHandle;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    }

    else
    {
      v13 = MEMORY[0x1E695E0F0];
    }

    [(IMFMFSession *)self _stopSharingWithFMLHandles:v13 inChat:chatCopy];
  }

  else
  {
    fmlHandle = [findMyHandle fmfHandle];

    if (fmlHandle)
    {
      [MEMORY[0x1E695DFD8] setWithObject:fmlHandle];
    }

    else
    {
      [MEMORY[0x1E695DFD8] set];
    }
    v13 = ;
    [(IMFMFSession *)self _stopSharingWithFMFHandles:v13 inChat:chatCopy];
  }
}

- (void)startSharingWithChat:(id)chat withDuration:(int64_t)duration
{
  chatCopy = chat;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isFindMyLocateSessionEnabled = [mEMORY[0x1E69A8070] isFindMyLocateSessionEnabled];

  v8 = [(IMFMFSession *)self findMyHandlesForChat:chatCopy];
  v9 = v8;
  if (isFindMyLocateSessionEnabled)
  {
    __im_fmlHandles = [v8 __im_fmlHandles];

    [(IMFMFSession *)self _startSharingWithFMLHandles:__im_fmlHandles inChat:chatCopy withDuration:duration];
  }

  else
  {
    __im_fmlHandles = [v8 __im_fmfHandles];

    if ([__im_fmlHandles count])
    {
      v11 = [(IMFMFSession *)self _dateFromShareDuration:duration];
      [(IMFMFSession *)self _startSharingWithFMFHandles:__im_fmlHandles inChat:chatCopy untilDate:v11];
    }
  }
}

- (void)stopSharingWithChat:(id)chat
{
  chatCopy = chat;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isFindMyLocateSessionEnabled = [mEMORY[0x1E69A8070] isFindMyLocateSessionEnabled];

  v6 = [(IMFMFSession *)self allSiblingFindMyHandlesForChat:chatCopy];
  v7 = v6;
  if (isFindMyLocateSessionEnabled)
  {
    __im_fmlHandles = [v6 __im_fmlHandles];

    allObjects = [__im_fmlHandles allObjects];
    [(IMFMFSession *)self _stopSharingWithFMLHandles:allObjects inChat:chatCopy];
  }

  else
  {
    __im_fmlHandles = [v6 __im_fmfHandles];

    if ([__im_fmlHandles count])
    {
      [(IMFMFSession *)self _stopSharingWithFMFHandles:__im_fmlHandles inChat:chatCopy];
    }
  }
}

- (id)findMyLocationForHandle:(id)handle
{
  findMyHandle = [handle findMyHandle];
  v5 = [(IMFMFSession *)self findMyLocationForFindMyHandle:findMyHandle];

  return v5;
}

- (id)findMyLocationForFindMyHandle:(id)handle
{
  handleCopy = handle;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isFindMyLocateSessionEnabled = [mEMORY[0x1E69A8070] isFindMyLocateSessionEnabled];

  if (isFindMyLocateSessionEnabled)
  {
    fmlHandle = [handleCopy fmlHandle];

    if (fmlHandle)
    {
      fmlSession = [(IMFMFSession *)self fmlSession];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        fmlSession2 = [(IMFMFSession *)self fmlSession];
        fmlHandle2 = [handleCopy fmlHandle];
        v12 = [fmlSession2 cachedLocationForHandle:fmlHandle2];

        if (v12)
        {
          v13 = [IMFindMyLocation locationWithFMLLocation:v12];
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_17;
      }

      v18 = IMLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E30B8();
      }
    }

    else
    {
      v18 = IMLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E30EC();
      }
    }
  }

  else
  {
    fmfHandle = [handleCopy fmfHandle];

    if (fmfHandle)
    {
      session = [(IMFMFSession *)self session];
      fmfHandle2 = [handleCopy fmfHandle];
      v17 = [session cachedLocationForHandle:fmfHandle2];
      v13 = [IMFindMyLocation locationWithFMFLocation:v17];

      goto LABEL_17;
    }

    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E3084();
    }
  }

  v13 = 0;
LABEL_17:

  return v13;
}

- (id)findMyLocationForHandleOrSibling:(id)sibling
{
  v53 = *MEMORY[0x1E69E9840];
  siblingCopy = sibling;
  findMyHandlesSharingLocationWithMe = [(IMFMFSession *)self findMyHandlesSharingLocationWithMe];
  v6 = [siblingCopy cnContactWithKeys:MEMORY[0x1E695E0F0]];
  v7 = v6;
  if (!v6)
  {
    v34 = [(IMFMFSession *)self findMyLocationForHandle:siblingCopy];
    fmfLocation = [v34 fmfLocation];
    location = [fmfLocation location];
    if (location)
    {
    }

    else
    {
      fmlLocation = [v34 fmlLocation];

      if (!fmlLocation)
      {
        v21 = 0;
        goto LABEL_40;
      }
    }

    v21 = v34;
LABEL_40:

    goto LABEL_41;
  }

  v39 = siblingCopy;
  v40 = v6;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = [MEMORY[0x1E69A7FD0] phoneNumbersForCNContact:v6];
  v8 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
  selfCopy = self;
  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = v8;
  v10 = *v48;
  v11 = 0x1E780D000uLL;
  do
  {
    v12 = 0;
    do
    {
      if (*v48 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v13 = IMInternationalForPhoneNumberWithOptions();
      v14 = [*(v11 + 2512) handleWithIdentifier:v13];
      if (([findMyHandlesSharingLocationWithMe containsObject:v14] & 1) == 0)
      {

        goto LABEL_14;
      }

      v15 = findMyHandlesSharingLocationWithMe;
      v16 = v11;
      v17 = [(IMFMFSession *)self findMyLocationForFindMyHandle:v14];
      fmfLocation2 = [v17 fmfLocation];
      location2 = [fmfLocation2 location];
      if (location2)
      {

LABEL_12:
        v21 = v17;
        goto LABEL_13;
      }

      fmlLocation2 = [v17 fmlLocation];

      if (fmlLocation2)
      {
        goto LABEL_12;
      }

      v21 = 0;
LABEL_13:

      self = selfCopy;
      v11 = v16;
      findMyHandlesSharingLocationWithMe = v15;
      if (v21)
      {
        goto LABEL_35;
      }

LABEL_14:
      ++v12;
    }

    while (v9 != v12);
    v22 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    v9 = v22;
  }

  while (v22);
LABEL_18:

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [MEMORY[0x1E69A7FD0] emailsForCNContact:v40];
  v23 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (!v23)
  {
    goto LABEL_34;
  }

  v24 = v23;
  v25 = *v44;
  while (2)
  {
    v26 = 0;
    while (2)
    {
      if (*v44 != v25)
      {
        objc_enumerationMutation(obj);
      }

      lowercaseString = [*(*(&v43 + 1) + 8 * v26) lowercaseString];
      v28 = [IMFindMyHandle handleWithIdentifier:lowercaseString];
      if ([findMyHandlesSharingLocationWithMe containsObject:v28])
      {
        v29 = [(IMFMFSession *)self findMyLocationForFindMyHandle:v28];
        fmfLocation3 = [v29 fmfLocation];
        location3 = [fmfLocation3 location];
        if (location3)
        {

          goto LABEL_28;
        }

        fmlLocation3 = [v29 fmlLocation];

        if (fmlLocation3)
        {
LABEL_28:
          v21 = v29;
        }

        else
        {
          v21 = 0;
        }

        self = selfCopy;
        if (v21)
        {
          goto LABEL_35;
        }
      }

      else
      {
      }

      if (v24 != ++v26)
      {
        continue;
      }

      break;
    }

    v33 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    v24 = v33;
    if (v33)
    {
      continue;
    }

    break;
  }

LABEL_34:
  v21 = 0;
LABEL_35:

  siblingCopy = v39;
  v7 = v40;
LABEL_41:

  return v21;
}

- (void)refreshLocationForHandle:(id)handle inChat:(id)chat
{
  handleCopy = handle;
  chatCopy = chat;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isFindMyLocateSessionEnabled = [mEMORY[0x1E69A8070] isFindMyLocateSessionEnabled];

  if ((isFindMyLocateSessionEnabled & 1) == 0)
  {
    v10 = [(IMFMFSession *)self _callerIDForChat:chatCopy];
    fmfHandle = [handleCopy fmfHandle];
    if (fmfHandle)
    {
      v12 = MEMORY[0x1E695DFD8];
      fmfHandle2 = [handleCopy fmfHandle];
      v14 = [v12 setWithObject:fmfHandle2];

      session = [(IMFMFSession *)self session];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_1A83AFFF8;
      v17[3] = &unk_1E78143D0;
      v18 = v14;
      v19 = v10;
      selfCopy = self;
      v21 = handleCopy;
      v16 = v14;
      [session refreshLocationForHandles:v16 callerId:v19 priority:1 completion:v17];
    }

    else
    {
      v16 = IMLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E3120();
      }
    }
  }
}

- (void)refreshLocationForChat:(id)chat
{
  chatCopy = chat;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isFindMyLocateSessionEnabled = [mEMORY[0x1E69A8070] isFindMyLocateSessionEnabled];

  if ((isFindMyLocateSessionEnabled & 1) == 0)
  {
    v7 = [(IMFMFSession *)self _callerIDForChat:chatCopy];
    allSiblingFindMyHandles = [chatCopy allSiblingFindMyHandles];
    __im_fmfHandles = [allSiblingFindMyHandles __im_fmfHandles];

    session = [(IMFMFSession *)self session];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A83B0228;
    v13[3] = &unk_1E78143D0;
    v14 = __im_fmfHandles;
    v15 = v7;
    selfCopy = self;
    v17 = chatCopy;
    v11 = v7;
    v12 = __im_fmfHandles;
    [session refreshLocationForHandles:v12 callerId:v11 priority:1 completion:v13];
  }
}

- (BOOL)handleIsSharingLocationWithMe:(id)me
{
  findMyHandle = [me findMyHandle];
  LOBYTE(self) = [(IMFMFSession *)self findMyHandleIsSharingLocationWithMe:findMyHandle];

  return self;
}

- (id)findMyHandlesSharingLocationWithMe
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isFindMyLocateSessionEnabled = [mEMORY[0x1E69A8070] isFindMyLocateSessionEnabled];

  if (isFindMyLocateSessionEnabled)
  {
    array = [MEMORY[0x1E695DEC8] array];
    fmlSession = [(IMFMFSession *)self fmlSession];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      fmlSession2 = [(IMFMFSession *)self fmlSession];
      cachedFriendsSharingLocationsWithMe = [fmlSession2 cachedFriendsSharingLocationsWithMe];
      v10 = cachedFriendsSharingLocationsWithMe;
      if (cachedFriendsSharingLocationsWithMe)
      {
        array2 = cachedFriendsSharingLocationsWithMe;
      }

      else
      {
        array2 = [MEMORY[0x1E695DEC8] array];
      }

      v17 = array2;

      array = v17;
    }

    v18 = MEMORY[0x1E695DFD8];
    v19 = [MEMORY[0x1E695DFD8] setWithArray:array];
    v16 = [v18 __im_findMyHandlesWithFMLFriends:v19];
  }

  else
  {
    session = [(IMFMFSession *)self session];
    getHandlesSharingLocationsWithMe = [session getHandlesSharingLocationsWithMe];
    v14 = getHandlesSharingLocationsWithMe;
    if (getHandlesSharingLocationsWithMe)
    {
      v15 = getHandlesSharingLocationsWithMe;
    }

    else
    {
      v15 = [MEMORY[0x1E695DFD8] set];
    }

    array = v15;

    v16 = [MEMORY[0x1E695DFD8] __im_findMyHandlesWithFMFHandles:array];
  }

  return v16;
}

- (BOOL)findMyHandleIsSharingLocationWithMe:(id)me
{
  if (!me)
  {
    return 0;
  }

  meCopy = me;
  findMyHandlesSharingLocationWithMe = [(IMFMFSession *)self findMyHandlesSharingLocationWithMe];
  v6 = [findMyHandlesSharingLocationWithMe containsObject:meCopy];

  return v6;
}

- (BOOL)chatHasParticipantsSharingLocationWithMe:(id)me
{
  v16 = *MEMORY[0x1E69E9840];
  meCopy = me;
  findMyHandlesSharingLocationWithMe = [(IMFMFSession *)self findMyHandlesSharingLocationWithMe];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  findMyHandles = [meCopy findMyHandles];
  v7 = [findMyHandles countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(findMyHandles);
        }

        if ([findMyHandlesSharingLocationWithMe containsObject:*(*(&v11 + 1) + 8 * i)])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [findMyHandles countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (BOOL)chatHasSiblingParticipantsSharingLocationWithMe:(id)me
{
  v16 = *MEMORY[0x1E69E9840];
  meCopy = me;
  findMyHandlesSharingLocationWithMe = [(IMFMFSession *)self findMyHandlesSharingLocationWithMe];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allSiblingFindMyHandles = [meCopy allSiblingFindMyHandles];
  v7 = [allSiblingFindMyHandles countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(allSiblingFindMyHandles);
        }

        if ([findMyHandlesSharingLocationWithMe containsObject:*(*(&v11 + 1) + 8 * i)])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [allSiblingFindMyHandles countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (BOOL)allChatParticipantsSharingLocationWithMe:(id)me
{
  v18 = *MEMORY[0x1E69E9840];
  meCopy = me;
  findMyHandlesSharingLocationWithMe = [(IMFMFSession *)self findMyHandlesSharingLocationWithMe];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  findMyHandles = [meCopy findMyHandles];
  v7 = [findMyHandles countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(findMyHandles);
        }

        if (![findMyHandlesSharingLocationWithMe containsObject:*(*(&v13 + 1) + 8 * i)])
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v8 = [findMyHandles countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (BOOL)handleIsFollowingMyLocation:(id)location
{
  findMyHandle = [location findMyHandle];
  LOBYTE(self) = [(IMFMFSession *)self findMyHandleIsFollowingMyLocation:findMyHandle];

  return self;
}

- (BOOL)findMyHandleIsFollowingMyLocation:(id)location
{
  locationCopy = location;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isFindMyLocateSessionEnabled = [mEMORY[0x1E69A8070] isFindMyLocateSessionEnabled];

  if (!isFindMyLocateSessionEnabled)
  {
    session = [(IMFMFSession *)self session];
    getHandlesFollowingMyLocation = [session getHandlesFollowingMyLocation];

    fmfHandle = [locationCopy fmfHandle];
    if (fmfHandle)
    {
      fmfHandle2 = [locationCopy fmfHandle];
      v16 = [getHandlesFollowingMyLocation containsObject:fmfHandle2];
    }

    else
    {
      v16 = 0;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (locationCopy)
  {
    fmlSession = [(IMFMFSession *)self fmlSession];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = MEMORY[0x1E695DFD8];
      fmlSession2 = [(IMFMFSession *)self fmlSession];
      cachedFriendsFollowingMyLocation = [fmlSession2 cachedFriendsFollowingMyLocation];
      getHandlesFollowingMyLocation = [v9 setWithArray:cachedFriendsFollowingMyLocation];

      if (getHandlesFollowingMyLocation)
      {
        [MEMORY[0x1E695DFD8] __im_findMyHandlesWithFMLFriends:getHandlesFollowingMyLocation];
      }

      else
      {
        [MEMORY[0x1E695DFD8] set];
      }
      fmfHandle = ;
      v16 = [fmfHandle containsObject:locationCopy];
      goto LABEL_12;
    }
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (BOOL)_canShareLocationWithFMLHandle:(id)handle isFromGroup:(BOOL)group
{
  groupCopy = group;
  v25 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if (handleCopy && ([(IMFMFSession *)self fmlSession], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, (v8 & 1) != 0))
  {
    fmlSession = [(IMFMFSession *)self fmlSession];
    v10 = [fmlSession cachedCanShareLocationWithHandle:handleCopy isFromGroup:groupCopy];

    v11 = v10 == 0;
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = @"NO";
        v17 = 138413058;
        v18 = handleCopy;
        if (groupCopy)
        {
          v14 = @"YES";
        }

        else
        {
          v14 = @"NO";
        }

        v20 = v14;
        v19 = 2112;
        if (!v10)
        {
          v13 = @"YES";
        }

        v21 = 2048;
        v22 = v10;
        v23 = 2112;
        v24 = v13;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "FindMyLocateSession cachedCanShareLocationWithHandle: %@ isGroup: %@ shareState: %lu canShare: %@", &v17, 0x2Au);
      }
    }
  }

  else
  {
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E3190();
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)chatHasParticipantsFollowingMyLocation:(id)location
{
  v41 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  chatStyle = [locationCopy chatStyle];
  if (chatStyle == 45)
  {
    fmfGroupIdGroup = 0;
  }

  else
  {
    fmfGroupIdGroup = [(IMFMFSession *)self fmfGroupIdGroup];
  }

  v7 = [(IMFMFSession *)self _callerIDForChat:locationCopy];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [locationCopy participants];
  v28 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v28)
  {
    v29 = *v36;
    v26 = locationCopy;
    v27 = v7;
    while (2)
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v36 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v35 + 1) + 8 * i);
        mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        isFindMyLocateSessionEnabled = [mEMORY[0x1E69A8070] isFindMyLocateSessionEnabled];

        if (isFindMyLocateSessionEnabled)
        {
          v12 = fmfGroupIdGroup;
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          findMySiblingHandles = [v9 findMySiblingHandles];
          v14 = [findMySiblingHandles countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v32;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v32 != v16)
                {
                  objc_enumerationMutation(findMySiblingHandles);
                }

                fmlHandle = [*(*(&v31 + 1) + 8 * j) fmlHandle];
                v19 = [(IMFMFSession *)self _canShareLocationWithFMLHandle:fmlHandle isFromGroup:chatStyle != 45];

                if (v19)
                {

                  v24 = 1;
                  fmfGroupIdGroup = v12;
                  locationCopy = v26;
                  v7 = v27;
                  goto LABEL_26;
                }
              }

              v15 = [findMySiblingHandles countByEnumeratingWithState:&v31 objects:v39 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          fmfGroupIdGroup = v12;
          v7 = v27;
        }

        else
        {
          findMyHandle = [v9 findMyHandle];
          fmfHandle = [findMyHandle fmfHandle];

          if (fmfHandle)
          {
            session = [(IMFMFSession *)self session];
            v23 = [session canShareLocationWithHandle:fmfHandle groupId:fmfGroupIdGroup callerId:v7];

            if (v23)
            {
              v24 = 1;
              locationCopy = v26;
              goto LABEL_26;
            }
          }
        }
      }

      v24 = 0;
      locationCopy = v26;
      v28 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v28)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v24 = 0;
  }

LABEL_26:

  return v24;
}

- (BOOL)allChatParticipantsFollowingMyLocation:(id)location
{
  v42 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  chatStyle = [locationCopy chatStyle];
  if (chatStyle == 45)
  {
    fmfGroupIdGroup = 0;
  }

  else
  {
    fmfGroupIdGroup = [(IMFMFSession *)self fmfGroupIdGroup];
  }

  v29 = [(IMFMFSession *)self _callerIDForChat:locationCopy];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [locationCopy participants];
  v6 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    v9 = 0x1E69A8000uLL;
    v27 = locationCopy;
    while (2)
    {
      v10 = 0;
      v28 = v7;
      do
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v36 + 1) + 8 * v10);
        sharedFeatureFlags = [*(v9 + 112) sharedFeatureFlags];
        isFindMyLocateSessionEnabled = [sharedFeatureFlags isFindMyLocateSessionEnabled];

        if (isFindMyLocateSessionEnabled)
        {
          v14 = v8;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          findMySiblingHandles = [v11 findMySiblingHandles];
          v16 = [findMySiblingHandles countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v33;
            while (2)
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v33 != v18)
                {
                  objc_enumerationMutation(findMySiblingHandles);
                }

                fmlHandle = [*(*(&v32 + 1) + 8 * i) fmlHandle];
                v21 = [(IMFMFSession *)self _canShareLocationWithFMLHandle:fmlHandle isFromGroup:chatStyle != 45];

                if (v21)
                {

                  v8 = v14;
                  v9 = 0x1E69A8000;
                  v7 = v28;
                  goto LABEL_23;
                }
              }

              v17 = [findMySiblingHandles countByEnumeratingWithState:&v32 objects:v40 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

LABEL_28:
          LOBYTE(fmfHandle) = 0;
LABEL_29:
          locationCopy = v27;
          goto LABEL_30;
        }

        findMyHandle = [v11 findMyHandle];
        fmfHandle = [findMyHandle fmfHandle];

        if (!fmfHandle)
        {
          goto LABEL_29;
        }

        session = [(IMFMFSession *)self session];
        v25 = [session canShareLocationWithHandle:fmfHandle groupId:fmfGroupIdGroup callerId:v29];

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_23:
        ++v10;
      }

      while (v10 != v7);
      v7 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      LOBYTE(fmfHandle) = 1;
      locationCopy = v27;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    LOBYTE(fmfHandle) = 1;
  }

LABEL_30:

  return fmfHandle;
}

- (id)timedOfferExpirationForChat:(id)chat
{
  v32 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  if ([chatCopy chatStyle] == 45)
  {
    [(IMFMFSession *)self fmfGroupIdOneToOne];
  }

  else
  {
    [(IMFMFSession *)self fmfGroupIdGroup];
  }
  v5 = ;
  v25 = [(IMFMFSession *)self _callerIDForChat:chatCopy];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v24 = chatCopy;
  obj = [chatCopy participants];
  v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_23;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v28;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v28 != v9)
      {
        objc_enumerationMutation(obj);
      }

      findMyHandle = [*(*(&v27 + 1) + 8 * i) findMyHandle];
      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isFindMyLocateSessionEnabled = [mEMORY[0x1E69A8070] isFindMyLocateSessionEnabled];

      if (!isFindMyLocateSessionEnabled)
      {
        session = [(IMFMFSession *)self session];
        fmfHandle = [findMyHandle fmfHandle];
        v20 = [session getOfferExpirationForHandle:fmfHandle groupId:v5 callerId:v25];
LABEL_14:
        v21 = v20;

        if (!v8)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }

      fmlHandle = [findMyHandle fmlHandle];
      if (fmlHandle)
      {
        v15 = fmlHandle;
        fmlSession = [(IMFMFSession *)self fmlSession];
        v17 = objc_opt_respondsToSelector();

        if (v17)
        {
          session = [(IMFMFSession *)self fmlSession];
          fmfHandle = [findMyHandle fmlHandle];
          v20 = [session cachedOfferExpirationForHandle:fmfHandle groupId:v5];
          goto LABEL_14;
        }
      }

      v21 = 0;
      if (!v8)
      {
LABEL_18:
        v8 = v21;
        goto LABEL_19;
      }

LABEL_15:
      if ([v21 compare:v8] == 1)
      {
        v22 = v21;

        v8 = v22;
      }

LABEL_19:
    }

    v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v7);
LABEL_23:

  return v8;
}

- (void)_updateActiveDevice
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isFindMyLocateSessionEnabled = [mEMORY[0x1E69A8070] isFindMyLocateSessionEnabled];

  if (isFindMyLocateSessionEnabled)
  {
    fmlSession = [(IMFMFSession *)self fmlSession];
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      return;
    }

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Calling FindMyLocateSession getActiveLocationSharingDeviceWithCompletion", buf, 2u);
      }
    }

    fmlSession2 = [(IMFMFSession *)self fmlSession];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1A83B165C;
    v10[3] = &unk_1E78143F8;
    v10[4] = self;
    [fmlSession2 getActiveLocationSharingDeviceWithCompletion:v10];
  }

  else
  {
    fmlSession2 = [(IMFMFSession *)self session];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1A83B17DC;
    v9[3] = &unk_1E7814420;
    v9[4] = self;
    [fmlSession2 getActiveLocationSharingDevice:v9];
  }
}

- (void)makeThisDeviceActiveDevice
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isFindMyLocateSessionEnabled = [mEMORY[0x1E69A8070] isFindMyLocateSessionEnabled];

  if (isFindMyLocateSessionEnabled)
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E3274();
    }
  }

  else
  {
    session = [(IMFMFSession *)self session];
    [session setActiveDevice:0 completion:&unk_1F1B6F5E0];
  }
}

- (void)didReceiveLocation:(id)location
{
  v10 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v5 = IMLocationLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = locationCopy;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "FMF didReceiveLocation %@", &v8, 0xCu);
  }

  handle = [locationCopy handle];
  v7 = [IMFindMyHandle handleWithFMFHandle:handle];

  [(IMFMFSession *)self didReceiveLocationForHandle:v7];
}

- (void)friendshipRequestReceived:(id)received
{
  v10 = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  v5 = IMLocationLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = receivedCopy;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "FMF friendshipRequestReceived %@", &v8, 0xCu);
  }

  fromHandle = [receivedCopy fromHandle];
  v7 = [IMFindMyHandle handleWithFMFHandle:fromHandle];

  [(IMFMFSession *)self _postRelationshipStatusDidChangeNotificationWithIMFindMyHandle:v7];
}

- (void)friendshipWasRemoved:(id)removed
{
  v9 = *MEMORY[0x1E69E9840];
  removedCopy = removed;
  v5 = IMLocationLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = removedCopy;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "FMF friendshipWasRemoved %@", &v7, 0xCu);
  }

  v6 = [IMFindMyHandle handleWithFMFHandle:removedCopy];
  [(IMFMFSession *)self _postRelationshipStatusDidChangeNotificationWithIMFindMyHandle:v6];
}

- (void)didStartSharingMyLocationWithHandle:(id)handle
{
  v9 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = IMLocationLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = handleCopy;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "FMF didStartSharingMyLocationWithHandle %@", &v7, 0xCu);
  }

  v6 = [IMFindMyHandle handleWithFMFHandle:handleCopy];
  [(IMFMFSession *)self _postRelationshipStatusDidChangeNotificationWithIMFindMyHandle:v6];
}

- (void)didStopSharingMyLocationWithHandle:(id)handle
{
  v9 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = IMLocationLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = handleCopy;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "FMF didStopSharingMyLocationWithHandle %@", &v7, 0xCu);
  }

  v6 = [IMFindMyHandle handleWithFMFHandle:handleCopy];
  [(IMFMFSession *)self _postRelationshipStatusDidChangeNotificationWithIMFindMyHandle:v6];
}

- (void)didStartAbilityToGetLocationForHandle:(id)handle
{
  v9 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = IMLocationLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = handleCopy;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "FMF didStartAbilityToGetLocationForHandle %@", &v7, 0xCu);
  }

  v6 = [IMFindMyHandle handleWithFMFHandle:handleCopy];
  [(IMFMFSession *)self _postRelationshipStatusDidChangeNotificationWithIMFindMyHandle:v6];
}

- (void)didStopAbilityToGetLocationForHandle:(id)handle
{
  v9 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = IMLocationLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = handleCopy;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "FMF didStopAbilityToGetLocationForHandle %@", &v7, 0xCu);
  }

  v6 = [IMFindMyHandle handleWithFMFHandle:handleCopy];
  [(IMFMFSession *)self _postRelationshipStatusDidChangeNotificationWithIMFindMyHandle:v6];
}

- (void)didChangeActiveLocationSharingDevice:(id)device
{
  v8 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v5 = IMLocationLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = deviceCopy;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "FMF didChangeActiveLocationSharingDevice %@", &v6, 0xCu);
  }

  [(IMFMFSession *)self _updateActiveDevice];
}

- (id)_bestAccountForAddresses:(id)addresses
{
  addressesCopy = addresses;
  v4 = +[IMServiceImpl iMessageService];
  v5 = IMPreferredSendingAccountForAddressesWantsGroupWithFallbackService(addressesCopy, 1, v4);

  if (([v5 _isUsableForSending] & 1) == 0)
  {
    v6 = +[IMServiceImpl smsService];
    if (v6)
    {
      v7 = +[IMAccountController sharedInstance];
      v8 = [v7 accountsForService:v6];
      __imFirstObject = [v8 __imFirstObject];

      v5 = __imFirstObject;
    }
  }

  return v5;
}

- (void)_startSharingWithFMLHandles:(id)handles inChat:(id)chat withDuration:(int64_t)duration
{
  v26 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  chatCopy = chat;
  if (![chatCopy joinState])
  {
    v18 = IMLocationLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEFAULT, "_startSharingWithFMLHandles not sharing because we've left the chat", buf, 2u);
    }

    goto LABEL_8;
  }

  account = [chatCopy account];
  uniqueID = [account uniqueID];
  [(IMFMFSession *)self setEstablishingAccountID:uniqueID];

  chatStyle = [chatCopy chatStyle];
  v13 = IMLocationLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = handlesCopy;
    v24 = 2048;
    durationCopy = duration;
    _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "_startSharingWithFMLHandles calling sendFriendshipOfferToHandles: %@, with duration: %ld", buf, 0x16u);
  }

  fmlSession = [(IMFMFSession *)self fmlSession];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    fmlSession2 = [(IMFMFSession *)self fmlSession];
    allObjects = [handlesCopy allObjects];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1A83B24B4;
    v19[3] = &unk_1E7814448;
    v20 = handlesCopy;
    durationCopy2 = duration;
    [fmlSession2 sendFriendshipOfferToHandles:allObjects expiration:duration isFromGroup:chatStyle != 45 completion:v19];

    v18 = v20;
LABEL_8:
  }
}

- (void)_startSharingWithFMFHandles:(id)handles inChat:(id)chat untilDate:(id)date
{
  v32 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  chatCopy = chat;
  dateCopy = date;
  if ([chatCopy joinState])
  {
    account = [chatCopy account];
    uniqueID = [account uniqueID];
    [(IMFMFSession *)self setEstablishingAccountID:uniqueID];

    if ([chatCopy chatStyle] == 45)
    {
      [(IMFMFSession *)self fmfGroupIdOneToOne];
    }

    else
    {
      [(IMFMFSession *)self fmfGroupIdGroup];
    }
    v14 = ;
    v15 = [(IMFMFSession *)self _callerIDForChat:chatCopy];
    v16 = IMLocationLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v25 = handlesCopy;
      v26 = 2112;
      v27 = dateCopy;
      v28 = 2112;
      v29 = v15;
      v30 = 2112;
      v31 = v14;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_DEFAULT, "willSendFriendshipOfferToHandles %@ untilDate %@ callerId %@ groupId %@", buf, 0x2Au);
    }

    session = [(IMFMFSession *)self session];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1A83B284C;
    v19[3] = &unk_1E7814470;
    v20 = handlesCopy;
    v21 = dateCopy;
    v22 = v15;
    v23 = v14;
    v18 = v14;
    v13 = v15;
    [session sendFriendshipOfferToHandles:v20 groupId:v18 callerId:v13 endDate:v21 completion:v19];
  }

  else
  {
    v13 = IMLocationLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "_startSharingWithFMFHandles not sharing because we've left the chat", buf, 2u);
    }
  }
}

- (void)_stopSharingWithFMFHandles:(id)handles inChat:(id)chat
{
  v25 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  chatCopy = chat;
  if ([chatCopy chatStyle] == 45)
  {
    [(IMFMFSession *)self fmfGroupIdOneToOne];
  }

  else
  {
    [(IMFMFSession *)self fmfGroupIdGroup];
  }
  v8 = ;
  v9 = [(IMFMFSession *)self _callerIDForChat:chatCopy];

  v10 = IMLocationLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v20 = handlesCopy;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEFAULT, "willStopSharingMyLocationWithHandles %@ callerId %@ groupId %@", buf, 0x20u);
  }

  session = [(IMFMFSession *)self session];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1A83B2B1C;
  v15[3] = &unk_1E7814498;
  v16 = handlesCopy;
  v17 = v9;
  v18 = v8;
  v12 = v8;
  v13 = v9;
  v14 = handlesCopy;
  [session stopSharingMyLocationWithHandles:v14 groupId:v12 callerId:v13 completion:v15];
}

- (void)_stopSharingWithFMLHandles:(id)handles inChat:(id)chat
{
  v20 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  chatCopy = chat;
  v8 = IMLocationLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = handlesCopy;
    v18 = 2112;
    v19 = chatCopy;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "_stopSharingWithFMLHandles %@ inChat: %@", buf, 0x16u);
  }

  chatStyle = [chatCopy chatStyle];
  if ([handlesCopy count])
  {
    fmlSession = [(IMFMFSession *)self fmlSession];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      fmlSession2 = [(IMFMFSession *)self fmlSession];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_1A83B2DC4;
      v13[3] = &unk_1E78144C0;
      v14 = handlesCopy;
      v15 = chatStyle != 45;
      [fmlSession2 stopSharingLocationWith:v14 isFromGroup:chatStyle != 45 completion:v13];
    }
  }
}

- (id)_callerIDForChat:(id)chat
{
  chatCopy = chat;
  lastAddressedHandleID = [chatCopy lastAddressedHandleID];
  if (!lastAddressedHandleID)
  {
    account = [chatCopy account];
    lastAddressedHandleID = [account displayName];
  }

  v6 = MEMORY[0x1AC56C550](@"FMFHandle", @"FMF");
  v7 = 0;
  if (lastAddressedHandleID && v6)
  {
    v7 = [v6 handleWithId:lastAddressedHandleID];
  }

  return v7;
}

- (void)_postNotification:(id)notification object:(id)object userInfo:(id)info
{
  v18 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  objectCopy = object;
  infoCopy = info;
  v10 = IMLocationLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = notificationCopy;
    v14 = 2112;
    v15 = objectCopy;
    v16 = 2112;
    v17 = infoCopy;
    _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEFAULT, "Posting FMF notification: %@  object: %@ userInfo: %@", &v12, 0x20u);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:notificationCopy object:objectCopy userInfo:infoCopy];
}

- (Class)__FMFSessionClass
{
  if (qword_1EB2EA000 != -1)
  {
    sub_1A84E33DC();
  }

  v3 = qword_1EB2EA008;

  return v3;
}

- (Class)__FMLSessionClass
{
  if (qword_1EB2E9D68 != -1)
  {
    sub_1A84E33F0();
  }

  v3 = qword_1EB2E9D70;

  return v3;
}

- (id)fmfGroupIdOneToOne
{
  if (qword_1EB2EA4A0 != -1)
  {
    sub_1A84E3404();
  }

  v3 = qword_1EB2EA498;

  return v3;
}

- (id)fmfGroupIdGroup
{
  if (qword_1EB2EA4B0 != -1)
  {
    sub_1A84E3418();
  }

  v3 = qword_1EB2EA4A8;

  return v3;
}

@end