@interface SRDiscoveredDevice
- (SRDiscoveredDevice)init;
- (id)description;
- (void)_setAADevice:(id)device;
- (void)_setAANearbyDevice:(id)device;
- (void)_setBtAddress:(id)address;
- (void)_setConnectionState:(unsigned __int8)state;
- (void)_setInUseBannerBackoffReason:(id)reason;
- (void)_setInUseBannerBackoffTick:(unint64_t)tick;
- (void)_setInUseBannerShown:(BOOL)shown;
- (void)_setIsNearby:(BOOL)nearby;
- (void)_setMutedSpeakerForRemotePhoneCall:(BOOL)call;
- (void)_setNearbyConnectedSourceCount:(unsigned __int8)count;
- (void)_setNearbyForceDisconnect:(BOOL)disconnect;
- (void)_setNearbyLastRouteHost:(id)host;
- (void)_setNearbyName:(id)name;
- (void)_setNearbyOutOfCaseTime:(unsigned __int8)time;
- (void)_setNearbyPaired:(BOOL)paired;
- (void)_setNearbyPrevInEar:(int)ear;
- (void)_setNearbyProductID:(unsigned int)d;
- (void)_setNearbyStreamState:(int64_t)state;
- (void)_setNearbyWxDevice:(id)device;
- (void)_setNearbyiCloudSignIn:(BOOL)in;
- (void)_setRouteToWxAfterUnhide:(BOOL)unhide;
- (void)_setRouted:(BOOL)routed;
- (void)_setUserConnectedState:(BOOL)state;
- (void)_updateUnifiedInEarState;
- (void)setAacpInEarState:(int)state;
- (void)setAirplaneMode:(BOOL)mode;
- (void)setDisconnectionBackoffTick:(unint64_t)tick;
- (void)setFwVersion:(id)version;
- (void)setInEar:(BOOL)ear;
- (void)setIsManualDisconnectLastTime:(BOOL)time;
- (void)setIsPaired:(BOOL)paired;
- (void)setIsPairingInProgress:(BOOL)progress;
- (void)setIsSRCapable:(BOOL)capable;
- (void)setIsUSBPlugIn:(BOOL)in;
- (void)setLastDRHostIDSIdentifier:(id)identifier;
- (void)setLowBatteryBannerShownInWorkoutContext:(BOOL)context;
- (void)setNearbyInEar:(int)ear;
- (void)setNearbyIsMeLastRoute:(BOOL)route;
- (void)setNearbyUSBPluggedIn:(char)in;
- (void)setNearbyUSBPluggedInTick:(unint64_t)tick;
- (void)setNearbyUpdateTick:(unint64_t)tick;
- (void)setPairingBannerClickTick:(unint64_t)tick;
- (void)setPrevFailedTipiConnectType:(int)type;
- (void)setShouldExtendTimeOnSpeaker:(BOOL)speaker;
- (void)setTipiConnectType:(int)type;
- (void)setUsbColorCode:(unsigned int)code;
- (void)setUsbName:(id)name;
- (void)setUsbProductID:(unsigned int)d;
@end

@implementation SRDiscoveredDevice

- (SRDiscoveredDevice)init
{
  v5.receiver = self;
  v5.super_class = SRDiscoveredDevice;
  v2 = [(SRDiscoveredDevice *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SRDiscoveredDevice *)v2 setUsbcColorCode:255];
  }

  return v3;
}

- (id)description
{
  v25 = 0;
  nearbyTipiScore1 = self->_nearbyTipiScore1;
  if (nearbyTipiScore1 > 0xF)
  {
    v3 = "?";
  }

  else
  {
    v3 = off_1002BB498[nearbyTipiScore1];
  }

  nearbyTipiScore2 = self->_nearbyTipiScore2;
  if (nearbyTipiScore2 > 0xF)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1002BB498[nearbyTipiScore2];
  }

  nearbyInEar = self->_nearbyInEar;
  if (nearbyInEar > 7)
  {
    v7 = "?";
  }

  else
  {
    v7 = off_1002BB5C8[nearbyInEar];
  }

  nearbyAudioState = self->_nearbyAudioState;
  if (nearbyAudioState > 3)
  {
    v9 = "?";
  }

  else
  {
    v9 = off_1002BB538[nearbyAudioState];
  }

  btAddress = self->_btAddress;
  nearbyName = self->_nearbyName;
  isNearby = self->_isNearby;
  fwVersion = self->_fwVersion;
  isSRCapable = self->_isSRCapable;
  nearbyConnectedSourceCount = self->_nearbyConnectedSourceCount;
  nearbyLastRouteHost = self->_nearbyLastRouteHost;
  nearbyForceDisconnectBit = self->_nearbyForceDisconnectBit;
  prevFailedTipiConnectType = self->_prevFailedTipiConnectType;
  if (prevFailedTipiConnectType > 0xA)
  {
    v19 = "?";
  }

  else
  {
    v19 = off_1002BB570[prevFailedTipiConnectType];
  }

  if (nearbyForceDisconnectBit)
  {
    v20 = "yes";
  }

  else
  {
    v20 = "no";
  }

  if (isSRCapable)
  {
    v21 = "yes";
  }

  else
  {
    v21 = "no";
  }

  if (isNearby)
  {
    v22 = "yes";
  }

  else
  {
    v22 = "no";
  }

  NSAppendPrintF(&v25, "btAddress %@ nbNm %@ isNb %s ts1 %s ts2 %s fw %@ isCp %s sc %d nbInEar %s nbLh %@ fd %s nbSt %s prevFailConnect %s", btAddress, nearbyName, v22, v3, v5, fwVersion, v21, nearbyConnectedSourceCount, v7, nearbyLastRouteHost, v20, v9, v19);
  v23 = v25;

  return v23;
}

- (void)_setAADevice:(id)device
{
  deviceCopy = device;
  aaDevice = self->_aaDevice;
  p_aaDevice = &self->_aaDevice;
  v7 = aaDevice;
  v8 = deviceCopy;
  v11 = v8;
  if (v7 == v8)
  {

LABEL_11:
    goto LABEL_12;
  }

  if ((v8 == 0) == (v7 != 0))
  {

LABEL_7:
    if (dword_1002F7530 <= 30 && (dword_1002F7530 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FADBC(p_aaDevice, v11);
    }

    v10 = v11;
    v7 = *p_aaDevice;
    *p_aaDevice = v10;
    goto LABEL_11;
  }

  v9 = [(AudioAccessoryDevice *)v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_12:
}

- (void)_setAANearbyDevice:(id)device
{
  deviceCopy = device;
  aaNearbyDevice = self->_aaNearbyDevice;
  p_aaNearbyDevice = &self->_aaNearbyDevice;
  v7 = aaNearbyDevice;
  v8 = deviceCopy;
  v11 = v8;
  if (v7 == v8)
  {

LABEL_11:
    goto LABEL_12;
  }

  if ((v8 == 0) == (v7 != 0))
  {

LABEL_7:
    if (dword_1002F7530 <= 30 && (dword_1002F7530 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FAE3C(p_aaNearbyDevice, v11);
    }

    v10 = v11;
    v7 = *p_aaNearbyDevice;
    *p_aaNearbyDevice = v10;
    goto LABEL_11;
  }

  v9 = [(AANearbyDevice *)v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_12:
}

- (void)setAacpInEarState:(int)state
{
  aacpInEarState = self->_aacpInEarState;
  if (aacpInEarState == state)
  {
    return;
  }

  if (dword_1002F7530 <= 30)
  {
    if (dword_1002F7530 != -1)
    {
LABEL_4:
      if (aacpInEarState > 7)
      {
        v7 = "?";
      }

      else
      {
        v7 = off_1002BB5C8[aacpInEarState];
      }

      if (state > 7)
      {
        v8 = "?";
      }

      else
      {
        v8 = off_1002BB5C8[state];
      }

      LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice setAacpInEarState:]", 30, "Setting aacpInEarState %@ %s -> %s", self->_btAddress, v7, v8);
      goto LABEL_13;
    }

    if (_LogCategory_Initialize())
    {
      aacpInEarState = self->_aacpInEarState;
      goto LABEL_4;
    }
  }

LABEL_13:
  self->_aacpInEarState = state;

  [(SRDiscoveredDevice *)self _updateUnifiedInEarState];
}

- (void)setAirplaneMode:(BOOL)mode
{
  airplaneMode = self->_airplaneMode;
  if (airplaneMode != mode)
  {
    modeCopy = mode;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        v6 = "no";
        if (airplaneMode)
        {
          v7 = "yes";
        }

        else
        {
          v7 = "no";
        }

        if (modeCopy)
        {
          v6 = "yes";
        }

        LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice setAirplaneMode:]", 30, "Setting airplaneMode %@ %s -> %s", self->_btAddress, v7, v6);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(airplaneMode) = self->_airplaneMode;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_airplaneMode = modeCopy;
  }
}

- (void)_setBtAddress:(id)address
{
  addressCopy = address;
  btAddress = self->_btAddress;
  p_btAddress = &self->_btAddress;
  v8 = addressCopy;
  if (![(NSString *)btAddress isEqualToString:?])
  {
    if (dword_1002F7530 <= 30 && (dword_1002F7530 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice _setBtAddress:]", 30, "Setting btaddress %@ -> %@", *p_btAddress, v8);
    }

    objc_storeStrong(p_btAddress, address);
  }
}

- (void)_setConnectionState:(unsigned __int8)state
{
  connectionState = self->_connectionState;
  if (connectionState != state)
  {
    stateCopy = state;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        if (connectionState > 3)
        {
          v6 = "?";
        }

        else
        {
          v6 = off_1002BB518[connectionState];
        }

        if (stateCopy > 3)
        {
          v7 = "?";
        }

        else
        {
          v7 = off_1002BB518[stateCopy];
        }

        LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice _setConnectionState:]", 30, "Setting connectionState %s -> %s", v6, v7);
        goto LABEL_13;
      }

      if (_LogCategory_Initialize())
      {
        connectionState = self->_connectionState;
        goto LABEL_4;
      }
    }

LABEL_13:
    self->_connectionState = stateCopy;
  }
}

- (void)setDisconnectionBackoffTick:(unint64_t)tick
{
  disconnectionBackoffTick = self->_disconnectionBackoffTick;
  if (disconnectionBackoffTick != tick)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        disconnectionBackoffTick = self->_disconnectionBackoffTick;
      }

      LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice setDisconnectionBackoffTick:]", 30, "Setting inUseBannerBackoffTick %@ %llu -> %llu", self->_btAddress, disconnectionBackoffTick, tick);
    }

LABEL_6:
    self->_disconnectionBackoffTick = tick;
  }
}

- (void)setFwVersion:(id)version
{
  versionCopy = version;
  if (![(NSString *)self->_fwVersion isEqualToString:?])
  {
    if (dword_1002F7530 <= 30 && (dword_1002F7530 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice setFwVersion:]", 30, "Setting fwVersion %@ %@ -> %@", self->_btAddress, self->_fwVersion, versionCopy);
    }

    objc_storeStrong(&self->_fwVersion, version);
  }
}

- (void)setIsSRCapable:(BOOL)capable
{
  isSRCapable = self->_isSRCapable;
  if (isSRCapable != capable)
  {
    capableCopy = capable;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        v6 = "no";
        if (isSRCapable)
        {
          v7 = "yes";
        }

        else
        {
          v7 = "no";
        }

        if (capableCopy)
        {
          v6 = "yes";
        }

        LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice setIsSRCapable:]", 30, "Setting isSRCapable %@ %s -> %s", self->_btAddress, v7, v6);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(isSRCapable) = self->_isSRCapable;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_isSRCapable = capableCopy;
  }
}

- (void)setIsManualDisconnectLastTime:(BOOL)time
{
  isManualDisconnectLastTime = self->_isManualDisconnectLastTime;
  if (isManualDisconnectLastTime != time)
  {
    timeCopy = time;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        v6 = "no";
        if (isManualDisconnectLastTime)
        {
          v7 = "yes";
        }

        else
        {
          v7 = "no";
        }

        if (timeCopy)
        {
          v6 = "yes";
        }

        LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice setIsManualDisconnectLastTime:]", 30, "Setting IsManualDisconnectLastTime %@ %s -> %s", self->_btAddress, v7, v6);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(isManualDisconnectLastTime) = self->_isManualDisconnectLastTime;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_isManualDisconnectLastTime = timeCopy;
  }
}

- (void)_setIsNearby:(BOOL)nearby
{
  isNearby = self->_isNearby;
  if (isNearby != nearby)
  {
    nearbyCopy = nearby;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        v6 = "no";
        if (isNearby)
        {
          v7 = "yes";
        }

        else
        {
          v7 = "no";
        }

        if (nearbyCopy)
        {
          v6 = "yes";
        }

        LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice _setIsNearby:]", 30, "Setting isNearby %@ %s -> %s", self->_btAddress, v7, v6);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(isNearby) = self->_isNearby;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_isNearby = nearbyCopy;
  }
}

- (void)setIsPaired:(BOOL)paired
{
  isPaired = self->_isPaired;
  if (isPaired != paired)
  {
    pairedCopy = paired;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        v6 = "no";
        if (isPaired)
        {
          v7 = "yes";
        }

        else
        {
          v7 = "no";
        }

        if (pairedCopy)
        {
          v6 = "yes";
        }

        LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice setIsPaired:]", 30, "Setting isPaired %@ %s -> %s", self->_btAddress, v7, v6);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(isPaired) = self->_isPaired;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_isPaired = pairedCopy;
  }
}

- (void)setIsPairingInProgress:(BOOL)progress
{
  isPairingInProgress = self->_isPairingInProgress;
  if (isPairingInProgress != progress)
  {
    progressCopy = progress;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        v6 = "no";
        if (isPairingInProgress)
        {
          v7 = "yes";
        }

        else
        {
          v7 = "no";
        }

        if (progressCopy)
        {
          v6 = "yes";
        }

        LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice setIsPairingInProgress:]", 30, "Setting isPairingInProgress %@ %s -> %s", self->_btAddress, v7, v6);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(isPairingInProgress) = self->_isPairingInProgress;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_isPairingInProgress = progressCopy;
  }
}

- (void)setIsUSBPlugIn:(BOOL)in
{
  isUSBPlugIn = self->_isUSBPlugIn;
  if (isUSBPlugIn != in)
  {
    inCopy = in;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        v6 = "no";
        if (isUSBPlugIn)
        {
          v7 = "yes";
        }

        else
        {
          v7 = "no";
        }

        if (inCopy)
        {
          v6 = "yes";
        }

        LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice setIsUSBPlugIn:]", 30, "Setting isUSBPlugIn %@ %s -> %s", self->_btAddress, v7, v6);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(isUSBPlugIn) = self->_isUSBPlugIn;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_isUSBPlugIn = inCopy;
  }
}

- (void)setInEar:(BOOL)ear
{
  inEar = self->_inEar;
  if (inEar == ear)
  {
    return;
  }

  earCopy = ear;
  if (dword_1002F7530 <= 30)
  {
    if (dword_1002F7530 != -1)
    {
LABEL_4:
      v7 = "no";
      if (inEar)
      {
        v8 = "yes";
      }

      else
      {
        v8 = "no";
      }

      if (earCopy)
      {
        v7 = "yes";
      }

      LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice setInEar:]", 30, "Setting inEar %@ %s -> %s", self->_btAddress, v8, v7);
      goto LABEL_11;
    }

    if (_LogCategory_Initialize())
    {
      LOBYTE(inEar) = self->_inEar;
      goto LABEL_4;
    }
  }

LABEL_11:
  self->_inEar = earCopy;
  v9 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
  [v9 activeHRMDeviceUpdate];
}

- (void)_setInUseBannerBackoffTick:(unint64_t)tick
{
  inUseBannerBackoffTick = self->_inUseBannerBackoffTick;
  if (inUseBannerBackoffTick != tick)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        inUseBannerBackoffTick = self->_inUseBannerBackoffTick;
      }

      LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice _setInUseBannerBackoffTick:]", 30, "Setting inUseBannerBackoffTick %@ %u -> %u", self->_btAddress, inUseBannerBackoffTick, tick);
    }

LABEL_6:
    self->_inUseBannerBackoffTick = tick;
  }
}

- (void)_setInUseBannerBackoffReason:(id)reason
{
  reasonCopy = reason;
  if (![(NSString *)self->_inUseBannerBackoffReason isEqualToString:?])
  {
    if (dword_1002F7530 <= 30 && (dword_1002F7530 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice _setInUseBannerBackoffReason:]", 30, "Setting inUseBannerBackoff %@ %@ -> %@", self->_btAddress, self->_inUseBannerBackoffReason, reasonCopy);
    }

    objc_storeStrong(&self->_inUseBannerBackoffReason, reason);
  }
}

- (void)_setInUseBannerShown:(BOOL)shown
{
  inUseBannerShown = self->_inUseBannerShown;
  if (inUseBannerShown != shown)
  {
    shownCopy = shown;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        v6 = "no";
        if (inUseBannerShown)
        {
          v7 = "yes";
        }

        else
        {
          v7 = "no";
        }

        if (shownCopy)
        {
          v6 = "yes";
        }

        LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice _setInUseBannerShown:]", 30, "Setting inUseBannerShown %@ %s -> %s", self->_btAddress, v7, v6);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(inUseBannerShown) = self->_inUseBannerShown;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_inUseBannerShown = shownCopy;
  }
}

- (void)setLowBatteryBannerShownInWorkoutContext:(BOOL)context
{
  lowBatteryBannerShownInWorkoutContext = self->_lowBatteryBannerShownInWorkoutContext;
  if (lowBatteryBannerShownInWorkoutContext != context)
  {
    contextCopy = context;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        v6 = "no";
        if (lowBatteryBannerShownInWorkoutContext)
        {
          v7 = "yes";
        }

        else
        {
          v7 = "no";
        }

        if (contextCopy)
        {
          v6 = "yes";
        }

        LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice setLowBatteryBannerShownInWorkoutContext:]", 30, "Setting _lowBatteryBannerShownInWorkoutContext %@ %s -> %s", self->_btAddress, v7, v6);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(lowBatteryBannerShownInWorkoutContext) = self->_lowBatteryBannerShownInWorkoutContext;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_lowBatteryBannerShownInWorkoutContext = contextCopy;
  }
}

- (void)_setMutedSpeakerForRemotePhoneCall:(BOOL)call
{
  mutedSpeakerForRemotePhoneCall = self->_mutedSpeakerForRemotePhoneCall;
  if (mutedSpeakerForRemotePhoneCall != call)
  {
    callCopy = call;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        v6 = "no";
        if (mutedSpeakerForRemotePhoneCall)
        {
          v7 = "yes";
        }

        else
        {
          v7 = "no";
        }

        if (callCopy)
        {
          v6 = "yes";
        }

        LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice _setMutedSpeakerForRemotePhoneCall:]", 30, "Setting muted speaker for remote phone call %s -> %s", v7, v6);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(mutedSpeakerForRemotePhoneCall) = self->_mutedSpeakerForRemotePhoneCall;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_mutedSpeakerForRemotePhoneCall = callCopy;
  }
}

- (void)_setNearbyiCloudSignIn:(BOOL)in
{
  nearbyiCloudSignIn = self->_nearbyiCloudSignIn;
  if (nearbyiCloudSignIn != in)
  {
    inCopy = in;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        v6 = "no";
        if (nearbyiCloudSignIn)
        {
          v7 = "yes";
        }

        else
        {
          v7 = "no";
        }

        if (inCopy)
        {
          v6 = "yes";
        }

        LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice _setNearbyiCloudSignIn:]", 30, "Setting nearbyiCloudSignIn %@ %s -> %s", self->_btAddress, v7, v6);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(nearbyiCloudSignIn) = self->_nearbyiCloudSignIn;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_nearbyiCloudSignIn = inCopy;
  }
}

- (void)setLastDRHostIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  lastDRHostIDSIdentifier = self->_lastDRHostIDSIdentifier;
  p_lastDRHostIDSIdentifier = &self->_lastDRHostIDSIdentifier;
  v9 = identifierCopy;
  if (![(NSString *)lastDRHostIDSIdentifier isEqualToString:?])
  {
    if (dword_1002F7530 <= 30 && (dword_1002F7530 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice setLastDRHostIDSIdentifier:]", 30, "Setting lastDRHostIDSIdentifier %@ -> %@", *p_lastDRHostIDSIdentifier, v9);
    }

    objc_storeStrong(p_lastDRHostIDSIdentifier, identifier);
    v8 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
    [v8 activeHRMDeviceUpdate];
  }
}

- (void)setNearbyInEar:(int)ear
{
  nearbyInEar = self->_nearbyInEar;
  if (nearbyInEar == ear)
  {
    return;
  }

  if (dword_1002F7530 <= 30)
  {
    if (dword_1002F7530 != -1)
    {
LABEL_4:
      if (nearbyInEar > 7)
      {
        v7 = "?";
      }

      else
      {
        v7 = off_1002BB5C8[nearbyInEar];
      }

      if (ear > 7)
      {
        v8 = "?";
      }

      else
      {
        v8 = off_1002BB5C8[ear];
      }

      LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice setNearbyInEar:]", 30, "Setting nearbyInEar %@ %s -> %s", self->_btAddress, v7, v8);
      goto LABEL_13;
    }

    if (_LogCategory_Initialize())
    {
      nearbyInEar = self->_nearbyInEar;
      goto LABEL_4;
    }
  }

LABEL_13:
  self->_nearbyInEar = ear;

  [(SRDiscoveredDevice *)self _updateUnifiedInEarState];
}

- (void)setNearbyIsMeLastRoute:(BOOL)route
{
  nearbyIsMeLastRoute = self->_nearbyIsMeLastRoute;
  if (nearbyIsMeLastRoute != route)
  {
    routeCopy = route;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        v6 = "no";
        if (nearbyIsMeLastRoute)
        {
          v7 = "yes";
        }

        else
        {
          v7 = "no";
        }

        if (routeCopy)
        {
          v6 = "yes";
        }

        LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice setNearbyIsMeLastRoute:]", 30, "Setting nearbyIsMeLastRoute %@ %s -> %s", self->_btAddress, v7, v6);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(nearbyIsMeLastRoute) = self->_nearbyIsMeLastRoute;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_nearbyIsMeLastRoute = routeCopy;
  }
}

- (void)_setNearbyLastRouteHost:(id)host
{
  hostCopy = host;
  v6 = hostCopy;
  if (hostCopy)
  {
    v7 = hostCopy;
    hostCopy = [(NSData *)self->_nearbyLastRouteHost isEqualToData:hostCopy];
    v6 = v7;
    if ((hostCopy & 1) == 0)
    {
      if (dword_1002F7530 <= 30 && (dword_1002F7530 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice _setNearbyLastRouteHost:]", 30, "Setting nearbyLastRouteHost %@ %@ -> %@", self->_btAddress, self->_nearbyLastRouteHost, v7);
      }

      objc_storeStrong(&self->_nearbyLastRouteHost, host);
      v6 = v7;
    }
  }

  _objc_release_x1(hostCopy, v6);
}

- (void)_setNearbyName:(id)name
{
  nameCopy = name;
  if (![(NSString *)self->_nearbyName isEqualToString:?])
  {
    if (dword_1002F7530 <= 30 && (dword_1002F7530 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice _setNearbyName:]", 30, "Setting nearbyName %@ %@ -> %@", self->_btAddress, self->_nearbyName, nameCopy);
    }

    objc_storeStrong(&self->_nearbyName, name);
  }
}

- (void)_setNearbyOutOfCaseTime:(unsigned __int8)time
{
  nearbyOutOfCaseTime = self->_nearbyOutOfCaseTime;
  if (nearbyOutOfCaseTime != time)
  {
    timeCopy = time;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        nearbyOutOfCaseTime = self->_nearbyOutOfCaseTime;
      }

      LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice _setNearbyOutOfCaseTime:]", 30, "Setting outOfCaseTime %@ %d -> %d", self->_btAddress, nearbyOutOfCaseTime, timeCopy);
    }

LABEL_6:
    self->_nearbyOutOfCaseTime = timeCopy;
  }
}

- (void)_setNearbyPaired:(BOOL)paired
{
  nearbyPaired = self->_nearbyPaired;
  if (nearbyPaired != paired)
  {
    pairedCopy = paired;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        v6 = "no";
        if (nearbyPaired)
        {
          v7 = "yes";
        }

        else
        {
          v7 = "no";
        }

        if (pairedCopy)
        {
          v6 = "yes";
        }

        LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice _setNearbyPaired:]", 30, "Setting nearbyPaired %@ %s -> %s", self->_btAddress, v7, v6);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(nearbyPaired) = self->_nearbyPaired;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_nearbyPaired = pairedCopy;
  }
}

- (void)_setNearbyProductID:(unsigned int)d
{
  nearbyProductID = self->_nearbyProductID;
  if (nearbyProductID != d)
  {
    v4 = *&d;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        nearbyProductID = self->_nearbyProductID;
      }

      LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice _setNearbyProductID:]", 30, "Setting nearbyProductID %@ %u -> %u", self->_btAddress, nearbyProductID, v4);
    }

LABEL_6:
    self->_nearbyProductID = v4;
  }
}

- (void)_setNearbyPrevInEar:(int)ear
{
  if (dword_1002F7530 <= 30 && (dword_1002F7530 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FAEBC(self, ear);
  }

  self->_nearbyPrevInEar = ear;
}

- (void)_setNearbyConnectedSourceCount:(unsigned __int8)count
{
  nearbyConnectedSourceCount = self->_nearbyConnectedSourceCount;
  if (nearbyConnectedSourceCount != count)
  {
    countCopy = count;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        nearbyConnectedSourceCount = self->_nearbyConnectedSourceCount;
      }

      LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice _setNearbyConnectedSourceCount:]", 30, "Setting nearbyConnectedSourceCount %@ %d -> %d", self->_btAddress, nearbyConnectedSourceCount, countCopy);
    }

LABEL_6:
    self->_nearbyConnectedSourceCount = countCopy;
  }
}

- (void)_setNearbyForceDisconnect:(BOOL)disconnect
{
  nearbyForceDisconnectBit = self->_nearbyForceDisconnectBit;
  if (nearbyForceDisconnectBit != disconnect)
  {
    disconnectCopy = disconnect;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        v6 = "no";
        if (nearbyForceDisconnectBit)
        {
          v7 = "yes";
        }

        else
        {
          v7 = "no";
        }

        if (disconnectCopy)
        {
          v6 = "yes";
        }

        LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice _setNearbyForceDisconnect:]", 30, "Setting nearbyForceDisconnect %s -> %s", v7, v6);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(nearbyForceDisconnectBit) = self->_nearbyForceDisconnectBit;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_nearbyForceDisconnectBit = disconnectCopy;
  }
}

- (void)_setNearbyStreamState:(int64_t)state
{
  nearbyStreamState = self->_nearbyStreamState;
  if (nearbyStreamState != state)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        if (nearbyStreamState > 3)
        {
          v6 = "?";
        }

        else
        {
          v6 = off_1002BB538[nearbyStreamState];
        }

        if (state > 3)
        {
          v7 = "?";
        }

        else
        {
          v7 = off_1002BB538[state];
        }

        LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice _setNearbyStreamState:]", 30, "Setting nearbyStreamState %@ %s -> %s", self->_btAddress, v6, v7);
        goto LABEL_13;
      }

      if (_LogCategory_Initialize())
      {
        nearbyStreamState = self->_nearbyStreamState;
        goto LABEL_4;
      }
    }

LABEL_13:
    self->_nearbyStreamState = state;
  }
}

- (void)setNearbyUpdateTick:(unint64_t)tick
{
  nearbyUpdateTick = self->_nearbyUpdateTick;
  if (nearbyUpdateTick != tick)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        nearbyUpdateTick = self->_nearbyUpdateTick;
      }

      LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice setNearbyUpdateTick:]", 30, "Setting nearbyUpdateTick %@ %llu -> %llu", self->_btAddress, nearbyUpdateTick, tick);
    }

LABEL_6:
    self->_nearbyUpdateTick = tick;
  }
}

- (void)setNearbyUSBPluggedIn:(char)in
{
  nearbyUSBPluggedIn = self->_nearbyUSBPluggedIn;
  if (nearbyUSBPluggedIn != in)
  {
    inCopy = in;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        if (nearbyUSBPluggedIn > 2)
        {
          v6 = "?";
        }

        else
        {
          v6 = off_1002BB558[nearbyUSBPluggedIn];
        }

        if (inCopy > 2)
        {
          v7 = "?";
        }

        else
        {
          v7 = off_1002BB558[inCopy];
        }

        LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice setNearbyUSBPluggedIn:]", 30, "Setting nearbyUSBPluggedIn %@ %s -> %s", self->_btAddress, v6, v7);
        goto LABEL_13;
      }

      if (_LogCategory_Initialize())
      {
        nearbyUSBPluggedIn = self->_nearbyUSBPluggedIn;
        goto LABEL_4;
      }
    }

LABEL_13:
    self->_nearbyUSBPluggedIn = inCopy;
  }
}

- (void)setNearbyUSBPluggedInTick:(unint64_t)tick
{
  nearbyUSBPluggedInTick = self->_nearbyUSBPluggedInTick;
  if (nearbyUSBPluggedInTick != tick)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        nearbyUSBPluggedInTick = self->_nearbyUSBPluggedInTick;
      }

      LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice setNearbyUSBPluggedInTick:]", 30, "Setting nearbyUSBPluggedInTick %@ %llu -> %llu", self->_btAddress, nearbyUSBPluggedInTick, tick);
    }

LABEL_6:
    self->_nearbyUSBPluggedInTick = tick;
  }
}

- (void)_setNearbyWxDevice:(id)device
{
  deviceCopy = device;
  nearbyWxDevice = self->_nearbyWxDevice;
  p_nearbyWxDevice = &self->_nearbyWxDevice;
  if (nearbyWxDevice != deviceCopy)
  {
    v8 = deviceCopy;
    objc_storeStrong(p_nearbyWxDevice, device);
    deviceCopy = v8;
  }
}

- (void)setPairingBannerClickTick:(unint64_t)tick
{
  pairingBannerClickTick = self->_pairingBannerClickTick;
  if (pairingBannerClickTick != tick)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        pairingBannerClickTick = self->_pairingBannerClickTick;
      }

      LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice setPairingBannerClickTick:]", 30, "Setting pairingBannerClickTick %@ %llu -> %llu", self->_btAddress, pairingBannerClickTick, tick);
    }

LABEL_6:
    self->_pairingBannerClickTick = tick;
  }
}

- (void)setPrevFailedTipiConnectType:(int)type
{
  prevFailedTipiConnectType = self->_prevFailedTipiConnectType;
  if (prevFailedTipiConnectType != type)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        if (prevFailedTipiConnectType > 0xA)
        {
          v6 = "?";
        }

        else
        {
          v6 = off_1002BB570[prevFailedTipiConnectType];
        }

        if (type > 0xA)
        {
          v7 = "?";
        }

        else
        {
          v7 = off_1002BB570[type];
        }

        LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice setPrevFailedTipiConnectType:]", 30, "Setting prevFailedTipiConnectType %@ %s -> %s", self->_btAddress, v6, v7);
        goto LABEL_13;
      }

      if (_LogCategory_Initialize())
      {
        prevFailedTipiConnectType = self->_prevFailedTipiConnectType;
        goto LABEL_4;
      }
    }

LABEL_13:
    self->_prevFailedTipiConnectType = type;
  }
}

- (void)_setRouted:(BOOL)routed
{
  routed = self->_routed;
  if (routed != routed)
  {
    routedCopy = routed;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        v6 = "no";
        if (routed)
        {
          v7 = "yes";
        }

        else
        {
          v7 = "no";
        }

        if (routedCopy)
        {
          v6 = "yes";
        }

        LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice _setRouted:]", 30, "Setting routed for %@ %s -> %s", self->_btAddress, v7, v6);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(routed) = self->_routed;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_routed = routedCopy;
  }
}

- (void)_setRouteToWxAfterUnhide:(BOOL)unhide
{
  routeToWxAfterUnhide = self->_routeToWxAfterUnhide;
  if (routeToWxAfterUnhide != unhide)
  {
    unhideCopy = unhide;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        v6 = "no";
        if (routeToWxAfterUnhide)
        {
          v7 = "yes";
        }

        else
        {
          v7 = "no";
        }

        if (unhideCopy)
        {
          v6 = "yes";
        }

        LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice _setRouteToWxAfterUnhide:]", 30, "Setting routeToWxAfterUnhide %@ %s -> %s", self->_btAddress, v7, v6);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(routeToWxAfterUnhide) = self->_routeToWxAfterUnhide;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_routeToWxAfterUnhide = unhideCopy;
  }
}

- (void)setShouldExtendTimeOnSpeaker:(BOOL)speaker
{
  shouldExtendTimeOnSpeaker = self->_shouldExtendTimeOnSpeaker;
  if (shouldExtendTimeOnSpeaker != speaker)
  {
    speakerCopy = speaker;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        v6 = "no";
        if (shouldExtendTimeOnSpeaker)
        {
          v7 = "yes";
        }

        else
        {
          v7 = "no";
        }

        if (speakerCopy)
        {
          v6 = "yes";
        }

        LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice setShouldExtendTimeOnSpeaker:]", 30, "Setting shouldExtendTimeOnSpeaker %@ %s -> %s", self->_btAddress, v7, v6);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(shouldExtendTimeOnSpeaker) = self->_shouldExtendTimeOnSpeaker;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_shouldExtendTimeOnSpeaker = speakerCopy;
  }
}

- (void)setTipiConnectType:(int)type
{
  tipiConnectType = self->_tipiConnectType;
  if (tipiConnectType != type)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        if (tipiConnectType > 0xA)
        {
          v6 = "?";
        }

        else
        {
          v6 = off_1002BB570[tipiConnectType];
        }

        if (type > 0xA)
        {
          v7 = "?";
        }

        else
        {
          v7 = off_1002BB570[type];
        }

        LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice setTipiConnectType:]", 30, "Setting tipiConnectType %@ %s -> %s", self->_btAddress, v6, v7);
        goto LABEL_13;
      }

      if (_LogCategory_Initialize())
      {
        tipiConnectType = self->_tipiConnectType;
        goto LABEL_4;
      }
    }

LABEL_13:
    self->_tipiConnectType = type;
  }
}

- (void)setUsbColorCode:(unsigned int)code
{
  usbcColorCode = self->_usbcColorCode;
  if (usbcColorCode != code)
  {
    v4 = *&code;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        usbcColorCode = self->_usbcColorCode;
      }

      LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice setUsbColorCode:]", 30, "Setting colorCode %@ %u -> %u", self->_btAddress, usbcColorCode, v4);
    }

LABEL_6:
    self->_usbcColorCode = v4;
  }
}

- (void)setUsbName:(id)name
{
  nameCopy = name;
  if (![(NSString *)self->_usbName isEqualToString:?])
  {
    if (dword_1002F7530 <= 30 && (dword_1002F7530 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice setUsbName:]", 30, "Setting usbName %@ %@ -> %@", self->_btAddress, self->_usbName, nameCopy);
    }

    objc_storeStrong(&self->_usbName, name);
  }
}

- (void)setUsbProductID:(unsigned int)d
{
  usbProductID = self->_usbProductID;
  if (usbProductID != d)
  {
    v4 = *&d;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        usbProductID = self->_usbProductID;
      }

      LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice setUsbProductID:]", 30, "Setting usbProductID %@ %u -> %u", self->_btAddress, usbProductID, v4);
    }

LABEL_6:
    self->_usbProductID = v4;
  }
}

- (void)_setUserConnectedState:(BOOL)state
{
  userConnectedState = self->_userConnectedState;
  if (userConnectedState != state)
  {
    stateCopy = state;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        v6 = "no";
        if (userConnectedState)
        {
          v7 = "yes";
        }

        else
        {
          v7 = "no";
        }

        if (stateCopy)
        {
          v6 = "yes";
        }

        LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice _setUserConnectedState:]", 30, "Setting userConnectedState %s -> %s", v7, v6);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(userConnectedState) = self->_userConnectedState;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_userConnectedState = stateCopy;
  }
}

- (void)_updateUnifiedInEarState
{
  aacpInEarState = self->_aacpInEarState;
  if (aacpInEarState)
  {
    if (aacpInEarState == 1 || aacpInEarState == 4)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    nearbyInEar = self->_nearbyInEar;
    if (nearbyInEar == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    if (nearbyInEar)
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  inEarStateUnified = self->_inEarStateUnified;
  if (v5 != inEarStateUnified)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_17:
        if (inEarStateUnified > 7)
        {
          v9 = "?";
        }

        else
        {
          v9 = off_1002BB5C8[inEarStateUnified];
        }

        LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice _updateUnifiedInEarState]", 30, "Setting inEarStateUnified %@ %s -> %s", self->_btAddress, v9, off_1002BB608[v5]);
        goto LABEL_23;
      }

      if (_LogCategory_Initialize())
      {
        inEarStateUnified = self->_inEarStateUnified;
        goto LABEL_17;
      }
    }

LABEL_23:
    self->_inEarStateUnified = v5;
  }
}

@end