@interface SRWxDevice
- (void)checkActiveHRMDeviceUpdate;
- (void)checkDataRelayServerPublishEligibility;
- (void)checkSiriHijackEligibility;
- (void)setDataRelayServerPublished:(BOOL)published;
- (void)setFirstBannerShown:(BOOL)shown;
- (void)setHasOwnership:(BOOL)ownership;
- (void)setHijackBackoffTicks:(unint64_t)ticks;
- (void)setInEar:(BOOL)ear;
- (void)setIsHRMCapable:(BOOL)capable;
- (void)setIsRoutingActionInitialized:(BOOL)initialized;
- (void)setManualRouteChangeInProgress:(BOOL)progress;
- (void)setManuallyRouted:(BOOL)routed;
- (void)setOtherTipiAudioCategory:(unsigned int)category;
- (void)setOtherTipiDeviceBuildVersion:(int64_t)version andMinorBuildVersion:(int64_t)buildVersion;
- (void)setOtherTipiDeviceDRCompatible:(BOOL)compatible;
- (void)setOtherTipiDeviceInfo:(id)info andName:(id)name andVersion:(id)version;
- (void)setOtherTipiDeviceIsStreamingAudio:(BOOL)audio;
- (void)setOtherTipiDeviceIsWatch:(BOOL)watch;
- (void)setOtherTipiDevicePlayingApp:(id)app;
- (void)setOtherTipiDeviceSiriEnablement:(BOOL)enablement;
- (void)setOtherTipiIDSIdentifier:(id)identifier;
- (void)setOtherTipiManuallyRouteTicks:(unint64_t)ticks;
- (void)setRouted:(BOOL)routed;
- (void)setRoutingAction:(int)action;
- (void)setRoutingUI:(int)i;
- (void)setTipiAndRoutedStateFlags:(unsigned int)flags;
@end

@implementation SRWxDevice

- (void)setFirstBannerShown:(BOOL)shown
{
  firstBannerShown = self->firstBannerShown;
  if (firstBannerShown != shown)
  {
    shownCopy = shown;
    if (dword_1002F6700 <= 30)
    {
      if (dword_1002F6700 != -1)
      {
LABEL_4:
        v6 = "no";
        if (firstBannerShown)
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

        LogPrintF(&dword_1002F6700, "[SRWxDevice setFirstBannerShown:]", 30, "Setting firstBanner for Wx %@ %s -> %s", self->deviceAddress, v7, v6);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(firstBannerShown) = self->firstBannerShown;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->firstBannerShown = shownCopy;
  }
}

- (void)checkActiveHRMDeviceUpdate
{
  if (dword_1002F6700 <= 30 && (dword_1002F6700 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DCB84(self);
  }

  v3 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
  [v3 activeHRMDeviceUpdate];
}

- (void)checkSiriHijackEligibility
{
  if (_os_feature_enabled_impl())
  {
    if (dword_1002F6700 <= 30 && (dword_1002F6700 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DCBEC(self);
    }

    otherTipiDeviceBTAddress = self->otherTipiDeviceBTAddress;
    if (otherTipiDeviceBTAddress)
    {
      LOBYTE(otherTipiDeviceBTAddress) = self->otherTipiAudioCategory == 100 && !self->otherTipiDeviceSiriEnablement;
    }

    v4 = otherTipiDeviceBTAddress & 1;
    siriHijackEligible = self->siriHijackEligible;
    if (siriHijackEligible != v4)
    {
      if (dword_1002F6700 <= 30)
      {
        if (dword_1002F6700 != -1)
        {
LABEL_13:
          v6 = "no";
          if (siriHijackEligible)
          {
            v7 = "yes";
          }

          else
          {
            v7 = "no";
          }

          if (v4)
          {
            v6 = "yes";
          }

          LogPrintF(&dword_1002F6700, "[SRWxDevice checkSiriHijackEligibility]", 30, "Setting Siri Hijack Eligible for Wx %@ %s -> %s", self->deviceAddress, v7, v6);
          goto LABEL_20;
        }

        if (_LogCategory_Initialize())
        {
          LOBYTE(siriHijackEligible) = self->siriHijackEligible;
          goto LABEL_13;
        }
      }

LABEL_20:
      self->siriHijackEligible = v4;
      v8 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
      [v8 systemStateUpdateRequired];
    }
  }
}

- (void)setDataRelayServerPublished:(BOOL)published
{
  dataRelayServerPublished = self->dataRelayServerPublished;
  if (dataRelayServerPublished != published)
  {
    publishedCopy = published;
    if (dword_1002F6700 <= 30)
    {
      if (dword_1002F6700 != -1)
      {
LABEL_4:
        v6 = "no";
        if (dataRelayServerPublished)
        {
          v7 = "yes";
        }

        else
        {
          v7 = "no";
        }

        if (publishedCopy)
        {
          v6 = "yes";
        }

        LogPrintF(&dword_1002F6700, "[SRWxDevice setDataRelayServerPublished:]", 30, "Setting dataRelayServerPublished for Wx %@ %s -> %s", self->deviceAddress, v7, v6);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(dataRelayServerPublished) = self->dataRelayServerPublished;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->dataRelayServerPublished = publishedCopy;
  }
}

- (void)setHijackBackoffTicks:(unint64_t)ticks
{
  hijackBackoffTicks = self->hijackBackoffTicks;
  if (hijackBackoffTicks != ticks)
  {
    if (dword_1002F6700 <= 30)
    {
      if (dword_1002F6700 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        hijackBackoffTicks = self->hijackBackoffTicks;
      }

      LogPrintF(&dword_1002F6700, "[SRWxDevice setHijackBackoffTicks:]", 30, "Setting hijackBackoffTicks for Wx %@ %u -> %u", self->deviceAddress, hijackBackoffTicks, ticks);
    }

LABEL_6:
    self->hijackBackoffTicks = ticks;
  }
}

- (void)setInEar:(BOOL)ear
{
  inEar = self->inEar;
  if (inEar == ear)
  {
    return;
  }

  earCopy = ear;
  if (dword_1002F6700 <= 30)
  {
    if (dword_1002F6700 != -1)
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

      LogPrintF(&dword_1002F6700, "[SRWxDevice setInEar:]", 30, "Setting inEar %s -> %s", v8, v7);
      goto LABEL_11;
    }

    if (_LogCategory_Initialize())
    {
      LOBYTE(inEar) = self->inEar;
      goto LABEL_4;
    }
  }

LABEL_11:
  self->inEar = earCopy;
  [(SRWxDevice *)self checkActiveHRMDeviceUpdate];

  [(SRWxDevice *)self checkDataRelayServerPublishEligibility];
}

- (void)setManuallyRouted:(BOOL)routed
{
  manuallyRouted = self->manuallyRouted;
  if (manuallyRouted != routed)
  {
    routedCopy = routed;
    if (dword_1002F6700 <= 30)
    {
      if (dword_1002F6700 != -1)
      {
LABEL_4:
        v6 = "no";
        if (manuallyRouted)
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

        LogPrintF(&dword_1002F6700, "[SRWxDevice setManuallyRouted:]", 30, "Setting manuallyRouted %s -> %s", v7, v6);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(manuallyRouted) = self->manuallyRouted;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->manuallyRouted = routedCopy;
  }
}

- (void)setManualRouteChangeInProgress:(BOOL)progress
{
  manualRouteChangeInProgress = self->manualRouteChangeInProgress;
  if (manualRouteChangeInProgress != progress)
  {
    progressCopy = progress;
    if (dword_1002F6700 <= 30)
    {
      if (dword_1002F6700 != -1)
      {
LABEL_4:
        v6 = "no";
        if (manualRouteChangeInProgress)
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

        LogPrintF(&dword_1002F6700, "[SRWxDevice setManualRouteChangeInProgress:]", 30, "Setting manualRouteChangeInProgress %s -> %s", v7, v6);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(manualRouteChangeInProgress) = self->manualRouteChangeInProgress;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->manualRouteChangeInProgress = progressCopy;
  }
}

- (void)setOtherTipiAudioCategory:(unsigned int)category
{
  otherTipiAudioCategory = self->otherTipiAudioCategory;
  if (otherTipiAudioCategory == category)
  {
    return;
  }

  v5 = *&category;
  if (dword_1002F6700 <= 30)
  {
    if (dword_1002F6700 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      otherTipiAudioCategory = self->otherTipiAudioCategory;
    }

    LogPrintF(&dword_1002F6700, "[SRWxDevice setOtherTipiAudioCategory:]", 30, "Setting OtherTipiAudioCategory for Wx %@ %d -> %d", self->deviceAddress, otherTipiAudioCategory, v5);
  }

LABEL_6:
  self->otherTipiAudioCategory = v5;
  [(SRWxDevice *)self checkSiriHijackEligibility];

  [(SRWxDevice *)self checkDataRelayServerPublishEligibility];
}

- (void)setOtherTipiDevicePlayingApp:(id)app
{
  appCopy = app;
  if (![(NSString *)self->otherTipiDevicePlayingApp isEqualToString:?])
  {
    if (dword_1002F6700 <= 30 && (dword_1002F6700 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6700, "[SRWxDevice setOtherTipiDevicePlayingApp:]", 30, "Setting OtherTipiDevicePlayingApp for Wx %@ %@ -> %@", self->deviceAddress, self->otherTipiDevicePlayingApp, appCopy);
    }

    objc_storeStrong(&self->otherTipiDevicePlayingApp, app);
  }
}

- (void)setOtherTipiDeviceInfo:(id)info andName:(id)name andVersion:(id)version
{
  infoCopy = info;
  nameCopy = name;
  versionCopy = version;
  v12 = infoCopy;
  otherTipiDeviceBTAddress = self->otherTipiDeviceBTAddress;
  v18 = v12;
  if (!(v12 | otherTipiDeviceBTAddress))
  {
    goto LABEL_9;
  }

  if (![(NSString *)otherTipiDeviceBTAddress isEqualToString:v12])
  {
    if (dword_1002F6700 <= 30 && (dword_1002F6700 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6700, "[SRWxDevice setOtherTipiDeviceInfo:andName:andVersion:]", 30, "Setting otherTipi for Wx %@ %@ -> %@ name %@ version %@", self->deviceAddress, self->otherTipiDeviceBTAddress, v18, nameCopy, versionCopy);
    }

    objc_storeStrong(&self->otherTipiDeviceBTAddress, info);
    objc_storeStrong(&self->otherTipiDeviceBTName, name);
    objc_storeStrong(&self->otherTipiDeviceVersion, version);
    self->otherTipiManuallyRouteTicks = 0;
    [(SRWxDevice *)self checkSiriHijackEligibility];
    [(SRWxDevice *)self checkDataRelayServerPublishEligibility];
  }

  if (!v18)
  {
LABEL_9:
    self->otherTipiAudioCategory = 0;
  }

  tipiAndRoutedState = self->tipiAndRoutedState;
  if (self->otherTipiDeviceBTAddress)
  {
    if (self->otherTipiDeviceIsWatch)
    {
      v15 = 3;
    }

    else
    {
      v15 = 1;
    }

    v16 = v15 | tipiAndRoutedState;
  }

  else
  {
    v16 = tipiAndRoutedState & 0xFFFFFFFC;
  }

  v17 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
  [v17 _setTipiAndRoutedStateFlags:v16 forDevice:self];
}

- (void)setOtherTipiDeviceIsStreamingAudio:(BOOL)audio
{
  otherTipiDeviceIsStreamingAudio = self->otherTipiDeviceIsStreamingAudio;
  if (otherTipiDeviceIsStreamingAudio == audio)
  {
    return;
  }

  audioCopy = audio;
  if (dword_1002F6700 <= 30)
  {
    if (dword_1002F6700 != -1)
    {
LABEL_4:
      v7 = "no";
      if (otherTipiDeviceIsStreamingAudio)
      {
        v8 = "yes";
      }

      else
      {
        v8 = "no";
      }

      if (audioCopy)
      {
        v7 = "yes";
      }

      LogPrintF(&dword_1002F6700, "[SRWxDevice setOtherTipiDeviceIsStreamingAudio:]", 30, "Setting otherTipiDeviceIsStreamingAudio %s -> %s", v8, v7);
      goto LABEL_11;
    }

    if (_LogCategory_Initialize())
    {
      LOBYTE(otherTipiDeviceIsStreamingAudio) = self->otherTipiDeviceIsStreamingAudio;
      goto LABEL_4;
    }
  }

LABEL_11:
  self->otherTipiDeviceIsStreamingAudio = audioCopy;

  [(SRWxDevice *)self checkDataRelayServerPublishEligibility];
}

- (void)setOtherTipiDeviceIsWatch:(BOOL)watch
{
  watchCopy = watch;
  otherTipiDeviceIsWatch = self->otherTipiDeviceIsWatch;
  if (otherTipiDeviceIsWatch == watch)
  {
    goto LABEL_12;
  }

  if (dword_1002F6700 <= 30)
  {
    if (dword_1002F6700 != -1)
    {
LABEL_4:
      v6 = "no";
      if (otherTipiDeviceIsWatch)
      {
        v7 = "yes";
      }

      else
      {
        v7 = "no";
      }

      if (watchCopy)
      {
        v6 = "yes";
      }

      LogPrintF(&dword_1002F6700, "[SRWxDevice setOtherTipiDeviceIsWatch:]", 30, "Setting otherTipiDeviceIsWatch %s -> %s", v7, v6);
      goto LABEL_11;
    }

    if (_LogCategory_Initialize())
    {
      LOBYTE(otherTipiDeviceIsWatch) = self->otherTipiDeviceIsWatch;
      goto LABEL_4;
    }
  }

LABEL_11:
  self->otherTipiDeviceIsWatch = watchCopy;
LABEL_12:
  v8 = self->tipiAndRoutedState & 0xFFFFFFFD;
  if (watchCopy)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
  [v10 _setTipiAndRoutedStateFlags:v9 | v8 forDevice:self];
}

- (void)setOtherTipiDeviceBuildVersion:(int64_t)version andMinorBuildVersion:(int64_t)buildVersion
{
  otherTipiDeviceMajorBuildVersion = self->otherTipiDeviceMajorBuildVersion;
  if (*&self->otherTipiDeviceMajorBuildVersion != __PAIR128__(buildVersion, version))
  {
    if (dword_1002F6700 <= 30)
    {
      if (dword_1002F6700 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        otherTipiDeviceMajorBuildVersion = self->otherTipiDeviceMajorBuildVersion;
      }

      LogPrintF(&dword_1002F6700, "[SRWxDevice setOtherTipiDeviceBuildVersion:andMinorBuildVersion:]", 30, "Setting otherTipi build version for Wx %@ %d.%d -> %d.%d", self->deviceAddress, otherTipiDeviceMajorBuildVersion, self->otherTipiDeviceMinorBuildVersion, version, buildVersion);
    }

LABEL_6:
    self->otherTipiDeviceMajorBuildVersion = version;
    self->otherTipiDeviceMinorBuildVersion = buildVersion;
  }
}

- (void)setOtherTipiDeviceDRCompatible:(BOOL)compatible
{
  otherTipiDeviceDRCompatible = self->otherTipiDeviceDRCompatible;
  if (otherTipiDeviceDRCompatible != compatible)
  {
    compatibleCopy = compatible;
    if (dword_1002F6700 <= 30)
    {
      if (dword_1002F6700 != -1)
      {
LABEL_4:
        v6 = "no";
        if (otherTipiDeviceDRCompatible)
        {
          v7 = "yes";
        }

        else
        {
          v7 = "no";
        }

        if (compatibleCopy)
        {
          v6 = "yes";
        }

        LogPrintF(&dword_1002F6700, "[SRWxDevice setOtherTipiDeviceDRCompatible:]", 30, "Setting otherTipiDeviceDRCompatible %s -> %s", v7, v6);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(otherTipiDeviceDRCompatible) = self->otherTipiDeviceDRCompatible;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->otherTipiDeviceDRCompatible = compatibleCopy;
  }
}

- (void)setOtherTipiIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![(NSString *)self->_otherTipiIDSIdentifier isEqualToString:?])
  {
    if (dword_1002F6700 <= 30 && (dword_1002F6700 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6700, "[SRWxDevice setOtherTipiIDSIdentifier:]", 30, "Setting otherTipi IDS Identifier for Wx %@ %@ -> %@", self->deviceAddress, self->_otherTipiIDSIdentifier, identifierCopy);
    }

    objc_storeStrong(&self->_otherTipiIDSIdentifier, identifier);
  }
}

- (void)setOtherTipiManuallyRouteTicks:(unint64_t)ticks
{
  otherTipiManuallyRouteTicks = self->otherTipiManuallyRouteTicks;
  if (otherTipiManuallyRouteTicks != ticks)
  {
    if (dword_1002F6700 <= 30)
    {
      if (dword_1002F6700 != -1)
      {
LABEL_4:
        v6 = "yes";
        if (otherTipiManuallyRouteTicks)
        {
          v7 = "yes";
        }

        else
        {
          v7 = "no";
        }

        if (!ticks)
        {
          v6 = "no";
        }

        LogPrintF(&dword_1002F6700, "[SRWxDevice setOtherTipiManuallyRouteTicks:]", 30, "Setting otherTipiManuallyRouteTick for Wx %@ %u -> %u", self->deviceAddress, v7, v6);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        otherTipiManuallyRouteTicks = self->otherTipiManuallyRouteTicks;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->otherTipiManuallyRouteTicks = ticks;
  }
}

- (void)setOtherTipiDeviceSiriEnablement:(BOOL)enablement
{
  otherTipiDeviceSiriEnablement = self->otherTipiDeviceSiriEnablement;
  if (otherTipiDeviceSiriEnablement == enablement)
  {
    return;
  }

  enablementCopy = enablement;
  if (dword_1002F6700 <= 30)
  {
    if (dword_1002F6700 != -1)
    {
LABEL_4:
      v6 = "no";
      if (otherTipiDeviceSiriEnablement)
      {
        v7 = "yes";
      }

      else
      {
        v7 = "no";
      }

      if (enablementCopy)
      {
        v6 = "yes";
      }

      LogPrintF(&dword_1002F6700, "[SRWxDevice setOtherTipiDeviceSiriEnablement:]", 30, "Setting setOtherTipiDeviceSiriEnablement for Wx %@ %s -> %s", self->deviceAddress, v7, v6);
      goto LABEL_11;
    }

    if (_LogCategory_Initialize())
    {
      LOBYTE(otherTipiDeviceSiriEnablement) = self->otherTipiDeviceSiriEnablement;
      goto LABEL_4;
    }
  }

LABEL_11:
  self->otherTipiDeviceSiriEnablement = enablementCopy;
  if (!enablementCopy)
  {

    [(SRWxDevice *)self checkSiriHijackEligibility];
  }
}

- (void)setHasOwnership:(BOOL)ownership
{
  hasOwnership = self->hasOwnership;
  if (hasOwnership == ownership)
  {
    return;
  }

  ownershipCopy = ownership;
  if (dword_1002F6700 <= 30)
  {
    if (dword_1002F6700 != -1)
    {
LABEL_4:
      v6 = "no";
      if (hasOwnership)
      {
        v7 = "yes";
      }

      else
      {
        v7 = "no";
      }

      if (ownershipCopy)
      {
        v6 = "yes";
      }

      LogPrintF(&dword_1002F6700, "[SRWxDevice setHasOwnership:]", 30, "Updating Wx ownership %@ %s -> %s", self->deviceAddress, v7, v6);
      goto LABEL_11;
    }

    if (_LogCategory_Initialize())
    {
      LOBYTE(hasOwnership) = self->hasOwnership;
      goto LABEL_4;
    }
  }

LABEL_11:
  self->hasOwnership = ownershipCopy;
  if (!ownershipCopy)
  {
    v8 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
    [v8 _setConnectedBannerTick:0];
  }
}

- (void)setRouted:(BOOL)routed
{
  routedCopy = routed;
  v5 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
  routed = self->routed;
  v17 = v5;
  if (routed != routedCopy)
  {
    if (dword_1002F6700 <= 30)
    {
      if (dword_1002F6700 != -1)
      {
LABEL_4:
        v7 = "no";
        if (routed)
        {
          v8 = "yes";
        }

        else
        {
          v8 = "no";
        }

        if (routedCopy)
        {
          v7 = "yes";
        }

        LogPrintF(&dword_1002F6700, "[SRWxDevice setRouted:]", 30, "Setting routedState for Wx %@ %s -> %s", self->deviceAddress, v8, v7);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(routed) = self->routed;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->routed = routedCopy;
    [(SRWxDevice *)self checkActiveHRMDeviceUpdate];
    [(SRWxDevice *)self checkDataRelayServerPublishEligibility];
    v5 = v17;
  }

  tipiAndRoutedState = self->tipiAndRoutedState;
  workoutObserver = [v5 workoutObserver];
  workoutActive = [workoutObserver workoutActive];

  if (self->routed)
  {
    v12 = tipiAndRoutedState | 4;
    if (workoutActive)
    {
      v13 = v17;
      if (!self->isHRMCapable)
      {
        goto LABEL_20;
      }

      v14 = v17;
      selfCopy = self;
      goto LABEL_18;
    }
  }

  else
  {
    v12 = tipiAndRoutedState & 0xFFFFFFFB;
    workoutWx = [v17 workoutWx];

    if (workoutWx == self)
    {
      v14 = v17;
      selfCopy = 0;
LABEL_18:
      [v14 setWorkoutWx:selfCopy];
    }
  }

  v13 = v17;
LABEL_20:
  [v13 _setTipiAndRoutedStateFlags:v12 forDevice:self];
}

- (void)setIsHRMCapable:(BOOL)capable
{
  isHRMCapable = self->isHRMCapable;
  if (isHRMCapable == capable)
  {
    return;
  }

  capableCopy = capable;
  if (dword_1002F6700 <= 30)
  {
    if (dword_1002F6700 != -1)
    {
LABEL_4:
      v7 = "no";
      if (isHRMCapable)
      {
        v8 = "yes";
      }

      else
      {
        v8 = "no";
      }

      if (capableCopy)
      {
        v7 = "yes";
      }

      LogPrintF(&dword_1002F6700, "[SRWxDevice setIsHRMCapable:]", 30, "Setting isHRMCapable for Wx %@ %s -> %s", self->deviceAddress, v8, v7);
      goto LABEL_11;
    }

    if (_LogCategory_Initialize())
    {
      LOBYTE(isHRMCapable) = self->isHRMCapable;
      goto LABEL_4;
    }
  }

LABEL_11:
  self->isHRMCapable = capableCopy;
  [(SRWxDevice *)self checkDataRelayServerPublishEligibility];

  [(SRWxDevice *)self checkActiveHRMDeviceUpdate];
}

- (void)setIsRoutingActionInitialized:(BOOL)initialized
{
  isRoutingActionInitialized = self->isRoutingActionInitialized;
  if (isRoutingActionInitialized != initialized)
  {
    initializedCopy = initialized;
    if (dword_1002F6700 <= 30)
    {
      if (dword_1002F6700 != -1)
      {
LABEL_4:
        v6 = "no";
        if (isRoutingActionInitialized)
        {
          v7 = "yes";
        }

        else
        {
          v7 = "no";
        }

        if (initializedCopy)
        {
          v6 = "yes";
        }

        LogPrintF(&dword_1002F6700, "[SRWxDevice setIsRoutingActionInitialized:]", 30, "Setting routingInit for Wx %@ %s -> %s", self->deviceAddress, v7, v6);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(isRoutingActionInitialized) = self->isRoutingActionInitialized;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->isRoutingActionInitialized = initializedCopy;
  }
}

- (void)setRoutingAction:(int)action
{
  routingAction = self->routingAction;
  if (routingAction != action)
  {
    if (dword_1002F6700 <= 30)
    {
      if (dword_1002F6700 != -1)
      {
LABEL_4:
        if (routingAction > 5)
        {
          v6 = "?";
        }

        else
        {
          v6 = (&off_1002B7D20)[routingAction];
        }

        if (action > 5)
        {
          v7 = "?";
        }

        else
        {
          v7 = (&off_1002B7D20)[action];
        }

        LogPrintF(&dword_1002F6700, "[SRWxDevice setRoutingAction:]", 30, "Setting RoutingAction for Wx %@ %s -> %s", self->deviceAddress, v6, v7);
        goto LABEL_13;
      }

      if (_LogCategory_Initialize())
      {
        routingAction = self->routingAction;
        goto LABEL_4;
      }
    }

LABEL_13:
    self->routingAction = action;
  }
}

- (void)setRoutingUI:(int)i
{
  routingUI = self->routingUI;
  if (routingUI != i)
  {
    if (dword_1002F6700 <= 30)
    {
      if (dword_1002F6700 != -1)
      {
LABEL_4:
        if (routingUI > 5)
        {
          v6 = "?";
        }

        else
        {
          v6 = (&off_1002B7D20)[routingUI];
        }

        if (i > 5)
        {
          v7 = "?";
        }

        else
        {
          v7 = (&off_1002B7D20)[i];
        }

        LogPrintF(&dword_1002F6700, "[SRWxDevice setRoutingUI:]", 30, "Setting RoutingUI for Wx %@ %s -> %s", self->deviceAddress, v6, v7);
        goto LABEL_13;
      }

      if (_LogCategory_Initialize())
      {
        routingUI = self->routingUI;
        goto LABEL_4;
      }
    }

LABEL_13:
    self->routingUI = i;
  }
}

- (void)setTipiAndRoutedStateFlags:(unsigned int)flags
{
  if (self->tipiAndRoutedState != flags)
  {
    if (dword_1002F6700 <= 30 && (dword_1002F6700 != -1 || _LogCategory_Initialize()))
    {
      deviceAddress = self->deviceAddress;
      v6 = CUPrintFlags32();
      v7 = CUPrintFlags32();
      LogPrintF(&dword_1002F6700, "[SRWxDevice setTipiAndRoutedStateFlags:]", 30, "Setting tipiAndRoutedState for Wx %@ %@ -> %@", deviceAddress, v6, v7);
    }

    self->tipiAndRoutedState = flags;
  }
}

- (void)checkDataRelayServerPublishEligibility
{
  if (!_os_feature_enabled_impl())
  {
    return;
  }

  v15 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
  if (self->otherTipiDeviceBTAddress && !self->otherTipiDeviceDRCompatible)
  {
    if (dword_1002F6700 <= 30 && (dword_1002F6700 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6700, "[SRWxDevice checkDataRelayServerPublishEligibility]", 30, "Other tipi device is not DR compatible");
    }

    goto LABEL_51;
  }

  if (!self->isHRMCapable)
  {
    if (dword_1002F6700 <= 30 && (dword_1002F6700 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6700, "[SRWxDevice checkDataRelayServerPublishEligibility]", 30, "HRM not supported");
    }

    if (self->dataRelayServerPublished)
    {
      [v15 dataRelayRemoveAvailableDataTypesWithDevice:self];
    }
  }

  if (GestaltGetDeviceClass() != 1 && GestaltGetDeviceClass() != 3 && GestaltGetDeviceClass() != 6)
  {
    if (dword_1002F6700 <= 30 && (dword_1002F6700 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6700, "[SRWxDevice checkDataRelayServerPublishEligibility]", 30, "Device not an iPhone, iPad or Watch platform, ineligible for DR");
    }

    goto LABEL_51;
  }

  v3 = self->otherTipiAudioCategory != 100 || self->otherTipiDeviceIsStreamingAudio;
  v4 = !self->routed && self->otherTipiDeviceBTAddress && self->inEar && v3;
  workoutObserver = [v15 workoutObserver];
  workoutActive = [workoutObserver workoutActive];

  routed = self->routed;
  if (routed)
  {
    v8 = 0;
  }

  else
  {
    v8 = (self->otherTipiDeviceBTAddress != 0) & workoutActive;
  }

  if (dword_1002F6700 <= 30)
  {
    if (dword_1002F6700 != -1)
    {
LABEL_26:
      v9 = "no";
      if (routed)
      {
        v10 = "yes";
      }

      else
      {
        v10 = "no";
      }

      if (self->isHRMCapable)
      {
        v11 = "yes";
      }

      else
      {
        v11 = "no";
      }

      if (v3)
      {
        v12 = "yes";
      }

      else
      {
        v12 = "no";
      }

      if (v4)
      {
        v13 = "yes";
      }

      else
      {
        v13 = "no";
      }

      if (self->dataRelayServerPublished)
      {
        v14 = "yes";
      }

      else
      {
        v14 = "no";
      }

      if (workoutActive)
      {
        v9 = "yes";
      }

      LogPrintF(&dword_1002F6700, "[SRWxDevice checkDataRelayServerPublishEligibility]", 30, "Check Data Relay Server Publish eligibility routed %s isHRMCapable %s otherDeviceIsNotIdle %s isDeviceRoutedAndStreamingFromTipiDevice %s, dataRelayServerPublished %s isWorkoutActive %s", v10, v11, v12, v13, v14, v9);
      goto LABEL_45;
    }

    if (_LogCategory_Initialize())
    {
      routed = self->routed;
      goto LABEL_26;
    }
  }

LABEL_45:
  if (((v4 | v8) & 1) != 0 && !self->dataRelayServerPublished)
  {
    [v15 dataRelayAddAvailableDataTypesWithDevice:self];
  }

  else if (self->routed && self->dataRelayServerPublished)
  {
    [v15 dataRelayRemoveAvailableDataTypesWithDevice:self];
  }

LABEL_51:
}

@end