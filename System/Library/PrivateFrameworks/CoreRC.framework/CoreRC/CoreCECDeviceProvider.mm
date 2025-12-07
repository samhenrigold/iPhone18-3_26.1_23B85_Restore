@interface CoreCECDeviceProvider
- (BOOL)abortTo:(unsigned __int8)to error:(id *)error;
- (BOOL)activeARCAudioSystem;
- (BOOL)activeSource:(id *)source;
- (BOOL)audioSystemRequestSystemAudioModeStatusChangeTo:(unint64_t)to error:(id *)error;
- (BOOL)cecVersion:(unsigned __int8)version to:(unsigned __int8)to error:(id *)error;
- (BOOL)deckControlCommandWithMode:(unint64_t)mode target:(id)target error:(id *)error;
- (BOOL)deckControlPlayWithMode:(unint64_t)mode target:(id)target error:(id *)error;
- (BOOL)deckControlRefreshStatus:(id)status requestType:(unint64_t)type error:(id *)error;
- (BOOL)deckControlSetDeckStatus:(unint64_t)status error:(id *)error;
- (BOOL)deckControlWithMode:(unint64_t)mode to:(unsigned __int8)to error:(id *)error;
- (BOOL)deckStatusWithInfo:(unint64_t)info to:(unsigned __int8)to error:(id *)error;
- (BOOL)deviceRequestSystemAudioModeStatusChangeTo:(unint64_t)to error:(id *)error;
- (BOOL)deviceVendorID:(unsigned int)d error:(id *)error;
- (BOOL)featureAbort:(unsigned __int8)abort reason:(unsigned __int8)reason to:(unsigned __int8)to error:(id *)error;
- (BOOL)getCECVersionTo:(unsigned __int8)to error:(id *)error;
- (BOOL)getMenuLanguageTo:(unsigned __int8)to error:(id *)error;
- (BOOL)getRemoteControlDestination:(id *)destination logicalAddress:(unsigned __int8 *)address forTargetDevice:(id)device command:(unsigned __int8)command error:(id *)error;
- (BOOL)giveAudioStatusTo:(unsigned __int8)to error:(id *)error;
- (BOOL)giveDeckStatusWithRequest:(unsigned __int8)request to:(unsigned __int8)to error:(id *)error;
- (BOOL)giveDevicePowerStatusTo:(unsigned __int8)to error:(id *)error;
- (BOOL)giveDeviceVendorIDTo:(unsigned __int8)to error:(id *)error;
- (BOOL)giveOSDNameTo:(unsigned __int8)to error:(id *)error;
- (BOOL)givePhysicalAddressTo:(unsigned __int8)to error:(id *)error;
- (BOOL)giveSystemAudioModeStatusTo:(unsigned __int8)to error:(id *)error;
- (BOOL)handleUserControl:(CECUserControl)control pressed:(BOOL)pressed fromDevice:(id)device abortReason:(unsigned __int8 *)reason;
- (BOOL)handlingRequiredForAudioReturnChannelMessage:(id)message;
- (BOOL)handlingRequiredForSystemAudioModeMessage:(id)message;
- (BOOL)imageViewOnTo:(unsigned __int8)to error:(id *)error;
- (BOOL)inactiveSourceTo:(unsigned __int8)to error:(id *)error;
- (BOOL)initiateARC:(unsigned __int8)c error:(id *)error;
- (BOOL)initiatorAddressErrorDetectedForMessage:(id)message;
- (BOOL)makeActiveSourceWithTVMenus:(BOOL)menus error:(id *)error;
- (BOOL)menuStatus:(unsigned __int8)status to:(unsigned __int8)to error:(id *)error;
- (BOOL)oneTouchPlayWithMenu:(BOOL)menu to:(unsigned __int8)to error:(id *)error;
- (BOOL)performStandbyWithTargetDevice:(id)device error:(id *)error;
- (BOOL)playWithMode:(unint64_t)mode to:(unsigned __int8)to error:(id *)error;
- (BOOL)pollTo:(unsigned __int8)to error:(id *)error;
- (BOOL)refreshProperties:(id)properties ofDevice:(id)device error:(id *)error;
- (BOOL)reportAudioStatusTo:(unsigned __int8)to error:(id *)error;
- (BOOL)reportFeatures:(id *)features;
- (BOOL)reportPhysicalAddress:(id *)address;
- (BOOL)reportPowerStatus:(unsigned __int8)status to:(unsigned __int8)to error:(id *)error;
- (BOOL)reportShortAudioDescriptorTo:(unsigned __int8)to error:(id *)error;
- (BOOL)requestActiveSource:(id *)source;
- (BOOL)requestAudioReturnChannelStatusChangeTo:(unint64_t)to error:(id *)error;
- (BOOL)requestAudioStatus:(id *)status;
- (BOOL)requestShortAudioDescriptor:(unsigned __int8)descriptor error:(id *)error;
- (BOOL)requestSystemAudioModeStatusChangeTo:(unint64_t)to error:(id *)error;
- (BOOL)resignActiveSource:(id *)source;
- (BOOL)routingChangeOriginalAddress:(unsigned __int16)address newAddress:(unsigned __int16)newAddress error:(id *)error;
- (BOOL)routingInformationPhysicalAddress:(unsigned __int16)address error:(id *)error;
- (BOOL)sendActiveSourceStatus:(BOOL)status error:(id *)error;
- (BOOL)sendHIDEvent:(id)event target:(id)target error:(id *)error;
- (BOOL)sendMessage:(id)message withRetryCount:(unsigned __int8)count error:(id *)error;
- (BOOL)setAudioMuteStatus:(BOOL)status error:(id *)error;
- (BOOL)setAudioReturnChannelControlEnabled:(BOOL)enabled error:(id *)error;
- (BOOL)setAudioVolumeStatus:(unint64_t)status error:(id *)error;
- (BOOL)setExtendedProperty:(id)property forKey:(id)key error:(id *)error;
- (BOOL)setMenuLanguage:(CECLanguage)language error:(id *)error;
- (BOOL)setOSDName:(CECOSDName)name to:(unsigned __int8)to error:(id *)error;
- (BOOL)setStreamPathPhysicalAddress:(unsigned __int16)address error:(id *)error;
- (BOOL)setSupportedAudioFormats:(id)formats error:(id *)error;
- (BOOL)setSystemAudioControlEnabled:(BOOL)enabled error:(id *)error;
- (BOOL)setSystemAudioMode:(unint64_t)mode to:(unsigned __int8)to error:(id *)error;
- (BOOL)setTrackAudioStatusEnabled:(BOOL)enabled pressTimeout:(int64_t)timeout pollInterval:(int64_t)interval error:(id *)error;
- (BOOL)standbyTo:(unsigned __int8)to error:(id *)error;
- (BOOL)systemAudioModeRequest:(unint64_t)request error:(id *)error;
- (BOOL)systemAudioModeRequestWithPhysicalAddress:(unsigned __int16)address to:(unsigned __int8)to error:(id *)error;
- (BOOL)systemAudioModeStatus:(unsigned __int8)status error:(id *)error;
- (BOOL)terminateARC:(unsigned __int8)c error:(id *)error;
- (BOOL)textViewOnTo:(unsigned __int8)to error:(id *)error;
- (BOOL)userControlPressed:(CECUserControl)pressed to:(unsigned __int8)to error:(id *)error;
- (BOOL)userControlReleasedTo:(unsigned __int8)to error:(id *)error;
- (CoreCECDeviceProvider)initWithBus:(id)bus local:(BOOL)local;
- (CoreCECDeviceProvider)initWithCoder:(id)coder;
- (CoreCECDeviceProvider)initWithDevice:(id)device;
- (OS_dispatch_queue)serialQueue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)extendedPropertyForKey:(id)key error:(id *)error;
- (id)filterActiveSourceMessage:(id)message;
- (id)filterCECVersionMessage:(id)message toDevice:(id)device;
- (id)filterDeckStatusMessage:(id)message toDevice:(id)device;
- (id)filterDeviceVendorIDMessage:(id)message;
- (id)filterInactiveSourceMessage:(id)message toDevice:(id)device;
- (id)filterMessage:(id)message toDevice:(id)device;
- (id)filterReportFeaturesMessage:(id)message toDevice:(id)device;
- (id)filterReportPhysicalAddressMessage:(id)message;
- (id)filterReportPowerStatusMessage:(id)message toDevice:(id)device;
- (id)filterRoutingChangeMessage:(id)message;
- (id)filterRoutingInformationMessage:(id)message;
- (id)filterSetMenuLanguageMessage:(id)message;
- (id)filterSetOSDNameMessage:(id)message toDevice:(id)device;
- (id)filterSetStreamPathMessage:(id)message;
- (id)filterSetSystemAudioModeMessage:(id)message toDevice:(id)device;
- (id)filterSystemAudioModeStatusMessage:(id)message toDevice:(id)device;
- (uint64_t)arcStarting;
- (uint64_t)arcStopping;
- (uint64_t)dsamStopping;
- (uint64_t)samStarting_broadcast_Req_Act_Src;
- (uint64_t)samStarting_broadcast_SSAM_ON;
- (uint64_t)samStarting_send_SSAM_ON_to_TV;
- (uint64_t)samStopping;
- (uint64_t)serialQueue;
- (uint64_t)userControlFollowerSafetyTimeoutExpired;
- (uint64_t)userControlFollowerSynthesizeRelease;
- (void)arcInformDelegateOfSuccessTransitioningTo:(unint64_t)to;
- (void)arcInformDelegateTransitionTo:(unint64_t)to failedWithError:(id)error;
- (void)arcStarting;
- (void)arcStarting_handleFeatureAbortReceivedWithOpcode:(unsigned __int8)opcode reason:(unsigned __int8)reason;
- (void)arcStarting_handleReportARCInitiatedReceived;
- (void)arcStopping;
- (void)arcStopping_handleFeatureAbortReceivedWithOpcode:(unsigned __int8)opcode reason:(unsigned __int8)reason;
- (void)arcStopping_handleReportARCTerminatedReceived;
- (void)audioStatusChanged;
- (void)audioStatusHandleUserControl:(CECUserControl)control pressed:(BOOL)pressed;
- (void)audioStatusHandleUserControlReleased;
- (void)broadcastPresence;
- (void)dealloc;
- (void)didAddToBus:(id)bus;
- (void)didChangePowerStatus:(unint64_t)status;
- (void)didNotHandleMessage:(id)message unsupportedOperand:(BOOL)operand;
- (void)didRemoveFromBus:(id)bus;
- (void)dispatchAsyncLowPriority:(id)priority;
- (void)dispatchSelector:(SEL)selector;
- (void)dispatchSelector:(SEL)selector afterDelay:(double)delay;
- (void)dispatchSelector:(SEL)selector withObject:(id)object;
- (void)dispatchSelector:(SEL)selector withObject:(id)object afterDelay:(double)delay;
- (void)dsamStarting:(id)starting;
- (void)dsamStartingWithPhysicalAddress:(unsigned __int16)address;
- (void)dsamStarting_handleBroadcastSSAMOnResponseReceived;
- (void)dsamStarting_handleBroadcastSSAMOnResponseTimeout;
- (void)dsamStopping;
- (void)dsamStopping_handleBroadcastSSAMOffResponseReceived;
- (void)dsamStopping_handleBroadcastSSAMOffResponseTimeout;
- (void)error:(id)error handlingMessage:(id)message fromDevice:(id)device;
- (void)handleActiveSourceMessage:(id)message fromDevice:(id)device;
- (void)handleDeckControlMessage:(id)message fromDevice:(id)device;
- (void)handleDeckControlPlayMessage:(id)message fromDevice:(id)device;
- (void)handleFeatureAbortMessage:(id)message fromDevice:(id)device;
- (void)handleGetCECVersionMessage:(id)message fromDevice:(id)device;
- (void)handleGetMenuLanguageMessage:(id)message fromDevice:(id)device;
- (void)handleGiveAudioStatusMessage:(id)message fromDevice:(id)device;
- (void)handleGiveDeckStatusMessage:(id)message fromDevice:(id)device;
- (void)handleGiveDevicePowerStatusMessage:(id)message fromDevice:(id)device;
- (void)handleGiveDeviceVendorIDMessage:(id)message fromDevice:(id)device;
- (void)handleGiveFeaturesMessage:(id)message fromDevice:(id)device;
- (void)handleGiveOSDNameMessage:(id)message fromDevice:(id)device;
- (void)handleGivePhysicalAddressMessage:(id)message fromDevice:(id)device;
- (void)handleGiveSystemAudioModeStatusMessage:(id)message fromDevice:(id)device;
- (void)handleMenuRequest:(id)request fromDevice:(id)device;
- (void)handleMessage:(id)message fromDevice:(id)device broadcast:(BOOL)broadcast;
- (void)handleReportARCInitiatedMessage:(id)message fromDevice:(id)device;
- (void)handleReportARCTerminatedMessage:(id)message fromDevice:(id)device;
- (void)handleReportAudioStatusMessage:(id)message fromDevice:(id)device;
- (void)handleRequestARCInitiationMessage:(id)message fromDevice:(id)device;
- (void)handleRequestARCTerminationMessage:(id)message fromDevice:(id)device;
- (void)handleRequestActiveSourceMessage:(id)message fromDevice:(id)device;
- (void)handleRequestShortAudioDescriptorMessage:(id)message fromDevice:(id)device;
- (void)handleSetAudioVolumeLevelMessage:(id)message fromDevice:(id)device;
- (void)handleSetStreamPathMessage:(id)message;
- (void)handleSetSystemAudioModeMessage:(id)message fromDevice:(id)device;
- (void)handleSystemAudioModeRequestMessage:(id)message fromDevice:(id)device;
- (void)handleUserControlPressedMessage:(id)message fromDevice:(id)device;
- (void)handleUserControlReleasedMessage:(id)message fromDevice:(id)device;
- (void)hibernationChanged:(BOOL)changed;
- (void)probeAbsoluteVolumeControl_handleFeatureAbortReceivedFromDevice:(id)device withOpcode:(unsigned __int8)opcode reason:(unsigned __int8)reason;
- (void)receivedSetAudioVolumeLevel:(unsigned __int8)level fromDevice:(id)device;
- (void)refreshActiveSource;
- (void)refreshSystemAudioModeStatus;
- (void)resetAudioStatusState;
- (void)samInformDelegateOfSuccessTransitioningTo:(unint64_t)to;
- (void)samInformDelegateTransitionTo:(unint64_t)to failedWithError:(id)error;
- (void)samResetStateToOff;
- (void)samStarting;
- (void)samStarting_broadcast_Req_Act_Src;
- (void)samStarting_broadcast_SSAM_ON;
- (void)samStarting_handleActiveSourceReceived;
- (void)samStarting_handleActiveSourceResponseTimeout;
- (void)samStarting_handleFeatureAbortReceived;
- (void)samStarting_handleFeatureAbortResponseTimeout;
- (void)samStarting_send_SSAM_ON_to_TV;
- (void)samStopping;
- (void)sendDeckStatusToDevice:(id)device;
- (void)sendFeatureAbort:(unsigned __int8)abort forMessage:(id)message;
- (void)userControlFollowerSafetyTimeoutExpired;
- (void)userControlFollowerSynthesizeRelease;
- (void)userControlInitiatorRepetitionTimeoutExpired;
- (void)userControlInitiatorTrackAudioStatusTimeoutExpired;
- (void)userControlScheduleFollowerSafetyTimeout;
- (void)userControlScheduleInitiatorRepetitionTimeout;
- (void)userControlScheduleInitiatorTrackAudioStatusTimeout;
- (void)willRemoveFromBus:(id)bus;
@end

@implementation CoreCECDeviceProvider

- (CoreCECDeviceProvider)initWithBus:(id)bus local:(BOOL)local
{
  v5.receiver = self;
  v5.super_class = CoreCECDeviceProvider;
  result = [(CoreCECDevice *)&v5 initWithBus:bus local:local];
  if (result)
  {
    result->_sendFromAddress = 15;
    result->_isValid = 1;
  }

  return result;
}

- (CoreCECDeviceProvider)initWithDevice:(id)device
{
  v7.receiver = self;
  v7.super_class = CoreCECDeviceProvider;
  v4 = [(CoreCECDevice *)&v7 initWithDevice:?];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sendFromAddress = [device sendFromAddress];
    }

    else
    {
      sendFromAddress = 15;
    }

    v4->_sendFromAddress = sendFromAddress;
    v4->_isValid = 1;
  }

  return v4;
}

- (CoreCECDeviceProvider)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CoreCECDeviceProvider;
  result = [(CoreCECDevice *)&v4 initWithCoder:coder];
  if (result)
  {
    result->_sendFromAddress = 15;
    result->_isValid = 1;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CoreCECDeviceProvider;
  [(CoreCECDevice *)&v2 dealloc];
}

- (void)willRemoveFromBus:(id)bus
{
  self->_isValid = 0;
  p_userControlInitiatorState = &self->_userControlInitiatorState;
  if (self->_userControlInitiatorState.isValid)
  {
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider willRemoveFromBus:];
    }

    p_userControlInitiatorState->isValid = 0;
    [(CoreCECDeviceProvider *)self userControlCancelInitiatorRepetitionTimeout];
    [(CoreCECDeviceProvider *)self userControlReleasedTo:p_userControlInitiatorState->destination error:0];
  }

  if ([(CoreCECDeviceProvider *)self systemAudioModeState]&& [(CoreCECDeviceProvider *)self systemAudioModeState]<= 6)
  {
    [(CoreCECDeviceProvider *)self samResetStateToOff];
    -[CoreCECDevice requestSystemAudioModeStatusChangeTo:didFinishWithResult:error:](self, "requestSystemAudioModeStatusChangeTo:didFinishWithResult:error:", 1, 0, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6723 userInfo:0]);
  }

  if ([(CoreCECDeviceProvider *)self audioReturnChannelState]== 1)
  {
    [(CoreCECDeviceProvider *)self setAudioReturnChannelState:0];
    -[CoreCECDevice requestAudioReturnChannelStatusChangeTo:didFinishWithResult:error:](self, "requestAudioReturnChannelStatusChangeTo:didFinishWithResult:error:", 1, 0, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6723 userInfo:0]);
  }

  v6.receiver = self;
  v6.super_class = CoreCECDeviceProvider;
  [(CoreRCDevice *)&v6 willRemoveFromBus:bus];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = CoreCECDeviceProvider;
  return [(CoreRCDevice *)&v4 copyWithZone:zone];
}

- (OS_dispatch_queue)serialQueue
{
  v2 = [-[CoreCECDeviceProvider busProvider](self "busProvider")];
  if (!v2)
  {
    [CoreCECDeviceProvider serialQueue];
  }

  return v2;
}

- (BOOL)setExtendedProperty:(id)property forKey:(id)key error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider setExtendedProperty:forKey:error:]", 90, "%@ set property %@ to %@\n", self, key, property);
  }

  return 0;
}

- (id)extendedPropertyForKey:(id)key error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider extendedPropertyForKey:error:]", 90, "%@ get property %@\n", self, key);
  }

  return 0;
}

- (void)didAddToBus:(id)bus
{
  v5.receiver = self;
  v5.super_class = CoreCECDeviceProvider;
  v6 = 0;
  [(CoreRCDevice *)&v5 didAddToBus:?];
  if ([(CoreRCDevice *)self isLocalDevice])
  {
    if (([bus setAllowHibernation:0 error:&v6] & 1) == 0)
    {
      [CoreCECDeviceProvider didAddToBus:];
    }
  }
}

- (BOOL)deckControlCommandWithMode:(unint64_t)mode target:(id)target error:(id *)error
{
  v14 = 0;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider deckControlCommandWithMode:mode target:? error:?];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CoreIRDeviceProvider setOSDName:v9 error:?];
    goto LABEL_12;
  }

  logicalAddress = [target logicalAddress];
  if (logicalAddress == 15)
  {
    [CoreCECDeviceProvider deckControlCommandWithMode:v11 target:? error:?];
LABEL_12:
    v12 = v15;
    if (!error)
    {
      return v12 == 0;
    }

    goto LABEL_7;
  }

  [(CoreCECDeviceProvider *)self deckControlWithMode:mode to:logicalAddress error:&v14];
  v12 = v14;
  if (error)
  {
LABEL_7:
    *error = v12;
  }

  return v12 == 0;
}

- (BOOL)deckControlPlayWithMode:(unint64_t)mode target:(id)target error:(id *)error
{
  v14 = 0;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider deckControlPlayWithMode:mode target:? error:?];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CoreIRDeviceProvider setOSDName:v9 error:?];
    goto LABEL_12;
  }

  logicalAddress = [target logicalAddress];
  if (logicalAddress == 15)
  {
    [CoreCECDeviceProvider deckControlCommandWithMode:v11 target:? error:?];
LABEL_12:
    v12 = v15;
    if (!error)
    {
      return v12 == 0;
    }

    goto LABEL_7;
  }

  [(CoreCECDeviceProvider *)self playWithMode:mode to:logicalAddress error:&v14];
  v12 = v14;
  if (error)
  {
LABEL_7:
    *error = v12;
  }

  return v12 == 0;
}

- (BOOL)deckControlRefreshStatus:(id)status requestType:(unint64_t)type error:(id *)error
{
  v17 = 0;
  v16 = 0;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider deckControlRefreshStatus:type requestType:? error:?];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CoreIRDeviceProvider setOSDName:v9 error:?];
    goto LABEL_14;
  }

  logicalAddress = [status logicalAddress];
  if (logicalAddress == 15)
  {
    [CoreCECDeviceProvider deckControlCommandWithMode:v11 target:? error:?];
    goto LABEL_14;
  }

  v12 = logicalAddress;
  if (!CECStatusRequestForCoreCECStatusRequest(&v16, type))
  {
    [CoreIRDeviceProvider setOSDName:v13 error:?];
LABEL_14:
    v14 = v18;
    if (!error)
    {
      return v14 == 0;
    }

    goto LABEL_8;
  }

  [(CoreCECDeviceProvider *)self giveDeckStatusWithRequest:v16 to:v12 error:&v17];
  v14 = v17;
  if (error)
  {
LABEL_8:
    *error = v14;
  }

  return v14 == 0;
}

- (BOOL)performStandbyWithTargetDevice:(id)device error:(id *)error
{
  v12 = 0;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider performStandbyWithTargetDevice:error:];
    if (device)
    {
      goto LABEL_5;
    }

LABEL_9:
    logicalAddress = 15;
    goto LABEL_10;
  }

  if (!device)
  {
    goto LABEL_9;
  }

LABEL_5:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CoreIRDeviceProvider setOSDName:v7 error:?];
LABEL_14:
    v10 = v13;
    if (!error)
    {
      return v10 == 0;
    }

    goto LABEL_11;
  }

  logicalAddress = [device logicalAddress];
  if (logicalAddress == 15)
  {
    [CoreCECDeviceProvider deckControlCommandWithMode:v8 target:? error:?];
    goto LABEL_14;
  }

LABEL_10:
  [(CoreCECDeviceProvider *)self standbyTo:logicalAddress error:&v12];
  v10 = v12;
  if (error)
  {
LABEL_11:
    *error = v10;
  }

  return v10 == 0;
}

- (BOOL)refreshProperties:(id)properties ofDevice:(id)device error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    v9 = objc_opt_class();
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider refreshProperties:ofDevice:error:]", 10, "%@ %@ refreshProperties: %@ ofDevice: %@\n", v9, self, properties, device);
  }

  if (properties || device && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [CoreIRDeviceProvider setOSDName:a2 error:?];
LABEL_17:
    v13 = v24;
    if (!error)
    {
      return v13 == 0;
    }

    goto LABEL_12;
  }

  logicalAddress = [device logicalAddress];
  if (logicalAddress == 15)
  {
    [CoreCECDeviceProvider deckControlCommandWithMode:v11 target:? error:?];
    goto LABEL_17;
  }

  v12 = logicalAddress;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __58__CoreCECDeviceProvider_refreshProperties_ofDevice_error___block_invoke;
  v22[3] = &unk_278EA42E8;
  v22[4] = self;
  v23 = logicalAddress;
  [(CoreCECDeviceProvider *)self dispatchAsyncLowPriority:v22];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __58__CoreCECDeviceProvider_refreshProperties_ofDevice_error___block_invoke_2;
  v20[3] = &unk_278EA42E8;
  v20[4] = self;
  v21 = v12;
  [(CoreCECDeviceProvider *)self dispatchAsyncLowPriority:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __58__CoreCECDeviceProvider_refreshProperties_ofDevice_error___block_invoke_3;
  v18[3] = &unk_278EA42E8;
  v18[4] = self;
  v19 = v12;
  [(CoreCECDeviceProvider *)self dispatchAsyncLowPriority:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__CoreCECDeviceProvider_refreshProperties_ofDevice_error___block_invoke_4;
  v16[3] = &unk_278EA42E8;
  v16[4] = self;
  v17 = v12;
  [(CoreCECDeviceProvider *)self dispatchAsyncLowPriority:v16];
  if ([device logicalAddress] == 5)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __58__CoreCECDeviceProvider_refreshProperties_ofDevice_error___block_invoke_5;
    v15[3] = &unk_278EA3400;
    v15[4] = self;
    [(CoreCECDeviceProvider *)self dispatchAsyncLowPriority:v15];
  }

  v13 = 0;
  if (error)
  {
LABEL_12:
    *error = v13;
  }

  return v13 == 0;
}

- (void)refreshActiveSource
{
  v2 = 0;
  if (![(CoreCECDeviceProvider *)self requestActiveSource:&v2]&& gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)&v2 refreshActiveSource];
  }
}

- (void)refreshSystemAudioModeStatus
{
  if ([(CoreCECDevice *)self deviceType]!= 1)
  {
    v3 = 0;
    if (![(CoreCECDeviceProvider *)self giveSystemAudioModeStatusTo:5 error:&v3])
    {
      if ([v3 isCECAcknowledgementError])
      {
        if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
        {
          [CoreCECDeviceProvider refreshSystemAudioModeStatus];
        }

        [-[CoreCECDeviceProvider busProvider](self "busProvider")];
      }
    }
  }
}

- (void)broadcastPresence
{
  if ([(CoreCECDevice *)self isCEC2Device])
  {
    [(CoreCECDeviceProvider *)self reportFeatures:0];
  }

  [(CoreCECDeviceProvider *)self reportPhysicalAddress:0];
  vendorID = [(CoreCECDevice *)self vendorID];

  [(CoreCECDeviceProvider *)self deviceVendorID:vendorID error:0];
}

- (void)dispatchAsyncLowPriority:(id)priority
{
  v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, priority);
  dispatch_async([(CoreCECDeviceProvider *)self serialQueue], v4);

  _Block_release(v4);
}

- (void)probeAbsoluteVolumeControl_handleFeatureAbortReceivedFromDevice:(id)device withOpcode:(unsigned __int8)opcode reason:(unsigned __int8)reason
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider probeAbsoluteVolumeControl_handleFeatureAbortReceivedFromDevice:reason withOpcode:? reason:?];
  }

  [device setFeature:20 supportStatus:1];
}

- (BOOL)setSystemAudioControlEnabled:(BOOL)enabled error:(id *)error
{
  enabledCopy = enabled;
  v9 = 0;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider setSystemAudioControlEnabled:? error:?];
  }

  if ([(CoreCECDevice *)self systemAudioControlEnabled]== enabledCopy)
  {
    return 1;
  }

  if (enabledCopy)
  {
    [(CoreCECDeviceProvider *)self refreshSystemAudioModeStatus];
  }

  v8.receiver = self;
  v8.super_class = CoreCECDeviceProvider;
  if ([(CoreCECDevice *)&v8 setSystemAudioControlEnabled:enabledCopy error:&v9])
  {
    [-[CoreRCDevice bus](self "bus")];
    return 1;
  }

  result = 0;
  if (error)
  {
    *error = v9;
  }

  return result;
}

- (BOOL)systemAudioModeRequest:(unint64_t)request error:(id *)error
{
  v9 = 0;
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider systemAudioModeRequest:error:];
  }

  if (![(CoreCECDevice *)self systemAudioControlEnabled]|| [(CoreCECDevice *)self deviceType]!= 2)
  {
    [CoreCECDeviceProvider systemAudioModeRequest:v7 error:?];
    goto LABEL_17;
  }

  if (request - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    [CoreIRDeviceProvider setOSDName:v7 error:?];
LABEL_17:
    result = 0;
    if (!error)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ([-[CoreCECDeviceProvider busProvider](self "busProvider")] == request)
  {
    return 1;
  }

  result = [(CoreCECDeviceProvider *)self deviceRequestSystemAudioModeStatusChangeTo:request == 2 error:&v9];
  if (error)
  {
LABEL_10:
    if (!result)
    {
      result = 0;
      *error = v9;
    }
  }

  return result;
}

- (BOOL)requestSystemAudioModeStatusChangeTo:(unint64_t)to error:(id *)error
{
  v9 = 0;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider requestSystemAudioModeStatusChangeTo:error:];
  }

  if (![(CoreCECDevice *)self systemAudioControlEnabled])
  {
    [CoreCECDeviceProvider systemAudioModeRequest:v7 error:?];
    goto LABEL_14;
  }

  if ([(CoreCECDeviceProvider *)self systemAudioModeTransitionInProgress])
  {
    [CoreCECDeviceProvider requestSystemAudioModeStatusChangeTo:? error:?];
    goto LABEL_14;
  }

  if ([(CoreCECDevice *)self deviceType]!= 1)
  {
    if (![(CoreCECDeviceProvider *)self deviceRequestSystemAudioModeStatusChangeTo:to error:&v9])
    {
      goto LABEL_14;
    }

    return 1;
  }

  if ([(CoreCECDeviceProvider *)self audioSystemRequestSystemAudioModeStatusChangeTo:to error:&v9])
  {
    return 1;
  }

LABEL_14:
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider requestSystemAudioModeStatusChangeTo:to error:?];
  }

  result = 0;
  if (error)
  {
    *error = v9;
  }

  return result;
}

- (BOOL)setAudioReturnChannelControlEnabled:(BOOL)enabled error:(id *)error
{
  enabledCopy = enabled;
  v9 = 0;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider setAudioReturnChannelControlEnabled:? error:?];
  }

  if ([(CoreCECDevice *)self audioReturnChannelControlEnabled]== enabledCopy)
  {
    return 1;
  }

  v8.receiver = self;
  v8.super_class = CoreCECDeviceProvider;
  if ([(CoreCECDevice *)&v8 setAudioReturnChannelControlEnabled:enabledCopy error:&v9])
  {
    [-[CoreRCDevice bus](self "bus")];
    return 1;
  }

  result = 0;
  if (error)
  {
    *error = v9;
  }

  return result;
}

- (BOOL)requestAudioReturnChannelStatusChangeTo:(unint64_t)to error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider requestAudioReturnChannelStatusChangeTo:to error:self];
  }

  audioReturnChannelControlEnabled = [(CoreCECDevice *)self audioReturnChannelControlEnabled];
  if (audioReturnChannelControlEnabled)
  {
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider requestAudioReturnChannelStatusChangeTo:to error:self];
    }

    if (to == 1)
    {
      v8 = sel_arcStarting;
    }

    else
    {
      v8 = sel_arcStopping;
    }

    [(CoreCECDeviceProvider *)self dispatchSelector:v8];
  }

  else
  {
    [(CoreCECDeviceProvider *)error requestAudioReturnChannelStatusChangeTo:to error:self];
  }

  return audioReturnChannelControlEnabled;
}

- (void)didChangePowerStatus:(unint64_t)status
{
  if (status == 2)
  {
    [-[CoreCECDeviceProvider busProvider](self "busProvider")];
  }

  else if (status == 1 && [(CoreCECDevice *)self systemAudioControlEnabled])
  {
    [(CoreCECDeviceProvider *)self refreshSystemAudioModeStatus];
  }

  [-[CoreCECDeviceProvider busProvider](self "busProvider")];
  if ([(CoreCECDevice *)self isCEC2Device])
  {
    v7 = 0;
    v6 = 0;
    CECPowerStatusForCoreCECPowerStatus(&v6, status);
    if (![(CoreCECDeviceProvider *)self reportPowerStatus:v6 to:15 error:&v7]&& gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider didChangePowerStatus:];
    }
  }

  v5.receiver = self;
  v5.super_class = CoreCECDeviceProvider;
  [(CoreCECDevice *)&v5 didChangePowerStatus:status];
}

- (BOOL)setTrackAudioStatusEnabled:(BOOL)enabled pressTimeout:(int64_t)timeout pollInterval:(int64_t)interval error:(id *)error
{
  enabledCopy = enabled;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider setTrackAudioStatusEnabled:? pressTimeout:? pollInterval:? error:?];
  }

  v10 = [(CoreCECDeviceProvider *)self trackAudioStatusEnabled]^ enabledCopy;
  if (v10)
  {
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider setTrackAudioStatusEnabled:enabledCopy pressTimeout:? pollInterval:? error:?];
    }

    [(CoreCECDeviceProvider *)self setTrackAudioStatusEnabled:enabledCopy];
    [(CoreCECDeviceProvider *)self setTrackAudioStatusPressTimeout:timeout];
    [(CoreCECDeviceProvider *)self setTrackAudioStatusPollInterval:interval];
    [-[CoreRCDevice bus](self "bus")];
  }

  return v10;
}

- (BOOL)requestAudioStatus:(id *)status
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider requestAudioStatus:?];
  }

  v8 = 0;
  v7 = 0;
  v5 = [(CoreCECDeviceProvider *)self getRemoteControlDestination:0 logicalAddress:&v7 forTargetDevice:0 command:65 error:&v8];
  if (v5)
  {
    [(CoreCECDeviceProvider *)self giveAudioStatusTo:v7 error:&v8];
  }

  else if (status)
  {
    *status = v8;
  }

  return v5;
}

- (BOOL)getRemoteControlDestination:(id *)destination logicalAddress:(unsigned __int8 *)address forTargetDevice:(id)device command:(unsigned __int8)command error:(id *)error
{
  if (device)
  {
    deviceCopy = device;
    goto LABEL_3;
  }

  if ((command - 65) <= 0x25 && ((1 << (command - 65)) & 0x3000400007) != 0)
  {
    if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider getRemoteControlDestination:? logicalAddress:? forTargetDevice:? command:? error:?];
    }

    if ([(CoreCECDevice *)self systemAudioControlEnabled])
    {
      deviceCopy = 0;
      if ([-[CoreCECDeviceProvider busProvider](self "busProvider")] == 2)
      {
        logicalAddress = 5;
      }

      else
      {
        logicalAddress = 0;
      }

      if (!destination)
      {
LABEL_5:
        v12 = 0;
        if (address)
        {
          *address = logicalAddress;
        }

        if (error)
        {
          goto LABEL_8;
        }

        goto LABEL_9;
      }

LABEL_4:
      *destination = deviceCopy;
      goto LABEL_5;
    }
  }

  else if ([(CoreCECDevice *)self isActiveSource])
  {
    if ([(CoreCECDevice *)self logicalAddress])
    {
      deviceCopy = 0;
      logicalAddress = 0;
      if (!destination)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v16 = [-[CoreRCDevice bus](self "bus")];
    if (v16)
    {
      deviceCopy = v16;
LABEL_3:
      logicalAddress = [deviceCopy logicalAddress];
      if (!destination)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  [CoreCECDeviceProvider systemAudioModeRequest:v15 error:?];
  v12 = v17;
  if (error)
  {
LABEL_8:
    *error = v12;
  }

LABEL_9:
  if (v12)
  {
    [CoreCECDeviceProvider getRemoteControlDestination:logicalAddress:forTargetDevice:command:error:];
  }

  return v12 == 0;
}

- (void)userControlScheduleInitiatorRepetitionTimeout
{
  v3 = self->_userControlInitiatorRepetitionTimeoutGeneration + 1;
  self->_userControlInitiatorRepetitionTimeoutGeneration = v3;
  v4 = dispatch_time(0, 250000000);
  serialQueue = [(CoreCECDeviceProvider *)self serialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__CoreCECDeviceProvider_userControlScheduleInitiatorRepetitionTimeout__block_invoke;
  v6[3] = &unk_278EA4310;
  v7 = v3;
  v6[4] = self;
  dispatch_after(v4, serialQueue, v6);
}

_DWORD *__70__CoreCECDeviceProvider_userControlScheduleInitiatorRepetitionTimeout__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  result = *(a1 + 32);
  if (v1 == result[58])
  {
    return [result userControlInitiatorRepetitionTimeoutExpired];
  }

  return result;
}

- (void)userControlInitiatorRepetitionTimeoutExpired
{
  if (self->_userControlInitiatorState.isValid)
  {
    v3 = [CECMessage userControlPressed:*&self->_userControlInitiatorState.control from:[(CoreCECDeviceProvider *)self sendFromAddress] to:self->_userControlInitiatorState.destination];
    v4 = 0;
    [(CoreCECDeviceProvider *)self userControlScheduleInitiatorRepetitionTimeout];
    if (![(CoreCECDeviceProvider *)self sendMessage:v3 error:&v4])
    {
      if ([v4 isCECAcknowledgementError])
      {
        [(CoreCECDeviceProvider *)self userControlCancelInitiatorRepetitionTimeout];
        if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider userControlInitiatorRepetitionTimeoutExpired]", 60, "Terminating Press and Hold Operation due to error sending %@: %@\n", v3, v4);
        }
      }
    }
  }
}

- (void)userControlScheduleInitiatorTrackAudioStatusTimeout
{
  v3 = self->_userControlInitiatorTrackAudioStatusTimeoutGeneration + 1;
  self->_userControlInitiatorTrackAudioStatusTimeoutGeneration = v3;
  if (gLogCategory_CoreRCDevice <= 10)
  {
    userControlInitiatorTrackAudioStatusTimeoutGeneration = v3;
    if (gLogCategory_CoreRCDevice != -1)
    {
LABEL_3:
      LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider userControlScheduleInitiatorTrackAudioStatusTimeout]", 10, "userControlScheduleInitiatorTrackAudioStatusTimeout %d (%d)\n", v3, userControlInitiatorTrackAudioStatusTimeoutGeneration);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      userControlInitiatorTrackAudioStatusTimeoutGeneration = self->_userControlInitiatorTrackAudioStatusTimeoutGeneration;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (self->_userControlInitiatorState.isValid)
  {
    if ([(CoreCECDeviceProvider *)self trackAudioStatusPollInterval]< 0)
    {
      return;
    }

    if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [(CoreCECDeviceProvider *)self userControlScheduleInitiatorTrackAudioStatusTimeout];
    }

    trackAudioStatusPollInterval = [(CoreCECDeviceProvider *)self trackAudioStatusPollInterval];
  }

  else
  {
    if ([(CoreCECDeviceProvider *)self trackAudioStatusPressTimeout]< 0)
    {
      return;
    }

    if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [(CoreCECDeviceProvider *)self userControlScheduleInitiatorTrackAudioStatusTimeout];
    }

    trackAudioStatusPollInterval = [(CoreCECDeviceProvider *)self trackAudioStatusPressTimeout];
  }

  v6 = dispatch_time(0, 1000000 * trackAudioStatusPollInterval);
  serialQueue = [(CoreCECDeviceProvider *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__CoreCECDeviceProvider_userControlScheduleInitiatorTrackAudioStatusTimeout__block_invoke;
  block[3] = &unk_278EA4310;
  v9 = v3;
  block[4] = self;
  dispatch_after(v6, serialQueue, block);
}

_DWORD *__76__CoreCECDeviceProvider_userControlScheduleInitiatorTrackAudioStatusTimeout__block_invoke(uint64_t a1)
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    __76__CoreCECDeviceProvider_userControlScheduleInitiatorTrackAudioStatusTimeout__block_invoke_cold_1(a1);
  }

  result = *(a1 + 32);
  if (*(a1 + 40) == result[59])
  {

    return [result userControlInitiatorTrackAudioStatusTimeoutExpired];
  }

  return result;
}

- (void)userControlInitiatorTrackAudioStatusTimeoutExpired
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)self userControlInitiatorTrackAudioStatusTimeoutExpired];
  }

  p_userControlInitiatorState = &self->_userControlInitiatorState;
  if (self->_userControlInitiatorState.isValid)
  {
    v5 = 0;
    if (-[CoreCECDeviceProvider giveAudioStatusTo:error:](self, "giveAudioStatusTo:error:", p_userControlInitiatorState->destination, &v5) || ![v5 isCECAcknowledgementError])
    {
      if ([(CoreCECDeviceProvider *)self trackAudioStatusPollInterval])
      {
        [(CoreCECDeviceProvider *)self userControlScheduleInitiatorTrackAudioStatusTimeout];
      }
    }

    else
    {
      [(CoreCECDeviceProvider *)self userControlCancelInitiatorTrackAudioStatusTimeout];
      if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [CoreCECDeviceProvider userControlInitiatorTrackAudioStatusTimeoutExpired];
      }
    }
  }

  else
  {
    destination = p_userControlInitiatorState->destination;

    [(CoreCECDeviceProvider *)self giveAudioStatusTo:destination error:0];
  }
}

- (void)userControlScheduleFollowerSafetyTimeout
{
  v3 = self->_userControlFollowerSafetyTimeoutGeneration + 1;
  self->_userControlFollowerSafetyTimeoutGeneration = v3;
  v4 = dispatch_time(0, 550000000);
  serialQueue = [(CoreCECDeviceProvider *)self serialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__CoreCECDeviceProvider_userControlScheduleFollowerSafetyTimeout__block_invoke;
  v6[3] = &unk_278EA4310;
  v7 = v3;
  v6[4] = self;
  dispatch_after(v4, serialQueue, v6);
}

_DWORD *__65__CoreCECDeviceProvider_userControlScheduleFollowerSafetyTimeout__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  result = *(a1 + 32);
  if (v1 == result[60])
  {
    return [result userControlFollowerSafetyTimeoutExpired];
  }

  return result;
}

- (void)userControlFollowerSafetyTimeoutExpired
{
  if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)self userControlFollowerSafetyTimeoutExpired];
  }

  [(CoreCECDeviceProvider *)self userControlFollowerSynthesizeRelease];
}

- (void)userControlFollowerSynthesizeRelease
{
  p_userControlFollowerState = &self->_userControlFollowerState;
  if (self->_userControlFollowerState.isValid)
  {
    if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider userControlFollowerSynthesizeRelease];
    }

    [(CoreCECDeviceProvider *)self handleUserControl:*&p_userControlFollowerState->control pressed:0 fromDevice:p_userControlFollowerState->sender abortReason:0];
    p_userControlFollowerState->isValid = 0;

    p_userControlFollowerState->sender = 0;
  }
}

- (void)audioStatusChanged
{
  selfCopy = self;
  if (gLogCategory_CoreRCDevice <= 10)
  {
    if (gLogCategory_CoreRCDevice != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(CoreCECDeviceProvider *)self audioStatusChanged];
    }
  }

  activeARCAudioSystem = [(CoreCECDeviceProvider *)selfCopy activeARCAudioSystem];
  if (activeARCAudioSystem && (p_userControlAudioState = &selfCopy->_userControlAudioState, selfCopy->_userControlAudioState.audioUserControlPressed))
  {
    v8 = dispatch_time(0, 0);
    selfCopy->_userControlAudioState.reportAudioStatusNeeded = 1;
    if (selfCopy->_userControlAudioState.audioUserControlReleased)
    {
      if (v8 >= p_userControlAudioState->nextTransmitTimestamp)
      {
        [(CoreCECDeviceProvider *)selfCopy scheduleReportAudioStatus];
      }

      [(CoreCECDeviceProvider *)selfCopy resetAudioStatusState];
    }

    else if (v8 >= p_userControlAudioState->nextTransmitTimestamp)
    {
      [(CoreCECDeviceProvider *)selfCopy scheduleReportAudioStatus];
      p_userControlAudioState->nextTransmitTimestamp = dispatch_time(0, 500000000);
      selfCopy->_userControlAudioState.reportAudioStatusNeeded = 0;
    }
  }

  else if (gLogCategory_CoreRCDevice <= 10)
  {
    if (gLogCategory_CoreRCDevice != -1 || (activeARCAudioSystem = _LogCategory_Initialize(), activeARCAudioSystem))
    {
      [(CoreCECDeviceProvider *)activeARCAudioSystem audioStatusChanged];
    }
  }
}

- (void)audioStatusHandleUserControl:(CECUserControl)control pressed:(BOOL)pressed
{
  pressedCopy = pressed;
  if ([(CoreCECDeviceProvider *)self activeARCAudioSystem])
  {
    if (pressedCopy)
    {

      [(CoreCECDeviceProvider *)self audioStatusHandleUserControlPressed];
    }

    else
    {

      [(CoreCECDeviceProvider *)self audioStatusHandleUserControlReleased];
    }
  }
}

- (void)audioStatusHandleUserControlReleased
{
  p_userControlAudioState = &self->_userControlAudioState;
  if (!self->_userControlAudioState.audioUserControlPressed)
  {
    return;
  }

  v4 = dispatch_time(0, 0);
  p_userControlAudioState->audioUserControlReleased = v4;
  nextTransmitTimestamp = p_userControlAudioState->nextTransmitTimestamp;
  if (p_userControlAudioState->reportAudioStatusNeeded)
  {
    if (nextTransmitTimestamp)
    {
      if (v4 >= nextTransmitTimestamp)
      {
        [(CoreCECDeviceProvider *)self scheduleReportAudioStatus];
      }
    }

    else if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider audioStatusHandleUserControlReleased];
    }

    goto LABEL_14;
  }

  if (nextTransmitTimestamp)
  {
LABEL_14:

    [(CoreCECDeviceProvider *)self resetAudioStatusState];
    return;
  }

  if (gLogCategory_CoreRCDevice <= 10)
  {
    if (gLogCategory_CoreRCDevice != -1 || (v4 = _LogCategory_Initialize(), v4))
    {
      [(CoreCECDeviceProvider *)v4 audioStatusHandleUserControlReleased];
    }
  }
}

- (BOOL)activeARCAudioSystem
{
  if ([(CoreCECDevice *)self deviceType]!= 1 || [(CoreCECDeviceProvider *)self systemAudioModeState]!= 7)
  {
    return 0;
  }

  v3 = [objc_msgSend(-[CoreCECDeviceProvider busProvider](self "busProvider")];
  return v3 != [(CoreCECDevice *)self physicalAddress];
}

- (void)resetAudioStatusState
{
  self->_userControlAudioState.audioUserControlPressed = 0;
  self->_userControlAudioState.audioUserControlReleased = 0;
  self->_userControlAudioState.nextTransmitTimestamp = 0;
  self->_userControlAudioState.reportAudioStatusNeeded = 0;
}

- (BOOL)deviceRequestSystemAudioModeStatusChangeTo:(unint64_t)to error:(id *)error
{
  v6 = gLogCategory_CoreRCDevice;
  if (gLogCategory_CoreRCDevice <= 10)
  {
    if (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize())
    {
      [CoreCECDeviceProvider deviceRequestSystemAudioModeStatusChangeTo:to error:self];
    }

    v6 = gLogCategory_CoreRCDevice;
  }

  if (to == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if (v6 <= 40 && (v6 != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)to deviceRequestSystemAudioModeStatusChangeTo:v7 error:?];
  }

  if (to == 1)
  {
    -[CoreCECDeviceProvider dispatchSelector:withObject:](self, "dispatchSelector:withObject:", sel_dsamStarting_, [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[CoreCECDevice physicalAddress](self, "physicalAddress")}]);
  }

  else
  {
    [(CoreCECDeviceProvider *)self dispatchSelector:sel_dsamStopping];
  }

  return 1;
}

- (void)dsamStarting:(id)starting
{
  unsignedIntegerValue = [starting unsignedIntegerValue];
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider dsamStarting:unsignedIntegerValue];
  }

  [(CoreCECDeviceProvider *)self dsamStartingWithPhysicalAddress:unsignedIntegerValue];
}

- (void)dsamStartingWithPhysicalAddress:(unsigned __int16)address
{
  addressCopy = address;
  v5 = 0;
  [(CoreCECDeviceProvider *)self setSystemAudioModeState:1];
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider dsamStartingWithPhysicalAddress:addressCopy];
  }

  if ([(CoreCECDeviceProvider *)self sendMessage:[CECMessage error:"systemAudioModeRequestWithPhysicalAddress:from:to:" systemAudioModeRequestWithPhysicalAddress:addressCopy from:[(CoreCECDeviceProvider *)self sendFromAddress] to:5], &v5])
  {
    [(CoreCECDeviceProvider *)self dispatchSelector:sel_dsamStarting_handleBroadcastSSAMOnResponseTimeout afterDelay:2.0];
    [(CoreCECDeviceProvider *)self setSystemAudioModeState:10];
  }

  else
  {
    [CoreCECDeviceProvider dsamStartingWithPhysicalAddress:];
  }
}

- (void)dsamStarting_handleBroadcastSSAMOnResponseTimeout
{
  if ([(CoreCECDeviceProvider *)self systemAudioModeTransitionInProgress])
  {
    systemAudioModeState = [(CoreCECDeviceProvider *)self systemAudioModeState];
    if (systemAudioModeState == 10)
    {
      if (gLogCategory_CoreRCDevice <= 40)
      {
        if (gLogCategory_CoreRCDevice != -1 || (systemAudioModeState = _LogCategory_Initialize(), systemAudioModeState))
        {
          [(CoreCECDeviceProvider *)systemAudioModeState dsamStarting_handleBroadcastSSAMOnResponseTimeout];
        }
      }

      [(CoreCECDeviceProvider *)self samResetStateToOff];
      cecTimeoutError = [MEMORY[0x277CCA9B8] cecTimeoutError];

      [(CoreCECDeviceProvider *)self samInformDelegateTransitionTo:1 failedWithError:cecTimeoutError];
    }

    else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [(CoreCECDeviceProvider *)self dsamStarting_handleBroadcastSSAMOnResponseTimeout];
    }
  }

  else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)self dsamStarting_handleBroadcastSSAMOnResponseTimeout];
  }
}

- (void)dsamStarting_handleBroadcastSSAMOnResponseReceived
{
  if ([(CoreCECDeviceProvider *)self systemAudioModeTransitionInProgress])
  {
    if ([(CoreCECDeviceProvider *)self systemAudioModeState]== 10)
    {
      [(CoreCECDeviceProvider *)self setSystemAudioModeState:7];

      [(CoreCECDeviceProvider *)self samInformDelegateOfSuccessTransitioningTo:1];
    }

    else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [(CoreCECDeviceProvider *)self dsamStarting_handleBroadcastSSAMOnResponseReceived];
    }
  }

  else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)self dsamStarting_handleBroadcastSSAMOnResponseReceived];
  }
}

- (void)dsamStopping
{
  v6 = 0;
  v3 = [(CoreCECDeviceProvider *)self setSystemAudioModeState:8];
  if (gLogCategory_CoreRCDevice <= 40)
  {
    if (gLogCategory_CoreRCDevice != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      [(CoreCECDeviceProvider *)v3 dsamStopping];
    }
  }

  if ([(CoreCECDeviceProvider *)self sendMessage:[CECMessage error:"systemAudioModeRequestWithPhysicalAddress:from:to:" systemAudioModeRequestWithPhysicalAddress:[(CoreCECDeviceProvider *)self sendFromAddress] from:5 to:?], &v6])
  {
    [(CoreCECDeviceProvider *)self dispatchSelector:sel_dsamStopping_handleBroadcastSSAMOffResponseTimeout afterDelay:2.0];
    [(CoreCECDeviceProvider *)self setSystemAudioModeState:11];
  }

  else
  {
    [CoreCECDeviceProvider dsamStopping];
  }
}

- (void)dsamStopping_handleBroadcastSSAMOffResponseTimeout
{
  if ([(CoreCECDeviceProvider *)self systemAudioModeTransitionInProgress])
  {
    systemAudioModeState = [(CoreCECDeviceProvider *)self systemAudioModeState];
    if (systemAudioModeState == 11)
    {
      if (gLogCategory_CoreRCDevice <= 40)
      {
        if (gLogCategory_CoreRCDevice != -1 || (systemAudioModeState = _LogCategory_Initialize(), systemAudioModeState))
        {
          [(CoreCECDeviceProvider *)systemAudioModeState dsamStopping_handleBroadcastSSAMOffResponseTimeout];
        }
      }

      [(CoreCECDeviceProvider *)self setSystemAudioModeState:7];
      cecTimeoutError = [MEMORY[0x277CCA9B8] cecTimeoutError];

      [(CoreCECDeviceProvider *)self samInformDelegateTransitionTo:0 failedWithError:cecTimeoutError];
    }

    else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [(CoreCECDeviceProvider *)self dsamStopping_handleBroadcastSSAMOffResponseTimeout];
    }
  }

  else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)self dsamStopping_handleBroadcastSSAMOffResponseTimeout];
  }
}

- (void)dsamStopping_handleBroadcastSSAMOffResponseReceived
{
  if ([(CoreCECDeviceProvider *)self systemAudioModeTransitionInProgress])
  {
    if ([(CoreCECDeviceProvider *)self systemAudioModeState]== 11)
    {
      [(CoreCECDeviceProvider *)self samResetStateToOff];

      [(CoreCECDeviceProvider *)self samInformDelegateOfSuccessTransitioningTo:0];
    }

    else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [(CoreCECDeviceProvider *)self dsamStopping_handleBroadcastSSAMOffResponseReceived];
    }
  }

  else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)self dsamStopping_handleBroadcastSSAMOffResponseReceived];
  }
}

- (BOOL)audioSystemRequestSystemAudioModeStatusChangeTo:(unint64_t)to error:(id *)error
{
  if (to == 1)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)to audioSystemRequestSystemAudioModeStatusChangeTo:v6 error:?];
  }

  v7 = &selRef_samStarting;
  if (to != 1)
  {
    v7 = &selRef_samStopping;
  }

  [(CoreCECDeviceProvider *)self dispatchSelector:*v7];
  return 1;
}

- (void)samStarting
{
  systemAudioModeRequestedByTV = [(CoreCECDeviceProvider *)self systemAudioModeRequestedByTV];
  systemAudioModeRequestedByOtherDevice = [(CoreCECDeviceProvider *)self systemAudioModeRequestedByOtherDevice];
  [(CoreCECDeviceProvider *)self setSystemAudioModeState:1];
  [(CoreCECDeviceProvider *)self setSystemAudioModeRequestedByTV:0];
  [(CoreCECDeviceProvider *)self setSystemAudioModeRequestedByOtherDevice:0];
  if (systemAudioModeRequestedByTV)
  {

    [(CoreCECDeviceProvider *)self samStarting_broadcast_SSAM_ON];
  }

  else if (systemAudioModeRequestedByOtherDevice || [-[CoreCECDeviceProvider busProvider](self "busProvider")])
  {

    [(CoreCECDeviceProvider *)self samStarting_send_SSAM_ON_to_TV];
  }

  else
  {

    [(CoreCECDeviceProvider *)self samStarting_broadcast_Req_Act_Src];
  }
}

- (void)samStarting_broadcast_Req_Act_Src
{
  v6 = 0;
  v3 = [(CoreCECDeviceProvider *)self setSystemAudioModeState:2];
  if (gLogCategory_CoreRCDevice <= 40)
  {
    if (gLogCategory_CoreRCDevice != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      [(CoreCECDeviceProvider *)v3 samStarting_broadcast_Req_Act_Src];
    }
  }

  if ([(CoreCECDeviceProvider *)self sendMessage:[CECMessage error:"requestActiveSourceFrom:" requestActiveSourceFrom:?], &v6])
  {
    [(CoreCECDeviceProvider *)self dispatchSelector:sel_samStarting_handleActiveSourceResponseTimeout afterDelay:2.0];
    [(CoreCECDeviceProvider *)self setSystemAudioModeState:3];
  }

  else
  {
    [CoreCECDeviceProvider samStarting_broadcast_Req_Act_Src];
  }
}

- (void)samStarting_handleActiveSourceResponseTimeout
{
  if ([(CoreCECDeviceProvider *)self systemAudioModeTransitionInProgress])
  {
    if ([(CoreCECDeviceProvider *)self systemAudioModeState]== 3)
    {
      v3 = [(CoreCECDeviceProvider *)self setSystemAudioModeState:4];
      if (gLogCategory_CoreRCDevice <= 40)
      {
        if (gLogCategory_CoreRCDevice != -1 || (v3 = _LogCategory_Initialize(), v3))
        {
          [(CoreCECDeviceProvider *)v3 samStarting_handleActiveSourceResponseTimeout];
        }
      }

      [(CoreCECDeviceProvider *)self samStarting_send_SSAM_ON_to_TV];
    }

    else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [(CoreCECDeviceProvider *)self samStarting_handleActiveSourceResponseTimeout];
    }
  }

  else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)self samStarting_handleActiveSourceResponseTimeout];
  }
}

- (void)samStarting_handleActiveSourceReceived
{
  if ([(CoreCECDeviceProvider *)self systemAudioModeTransitionInProgress])
  {
    if ([(CoreCECDeviceProvider *)self systemAudioModeState]== 3)
    {
      v3 = [(CoreCECDeviceProvider *)self setSystemAudioModeState:4];
      if (gLogCategory_CoreRCDevice <= 40)
      {
        if (gLogCategory_CoreRCDevice != -1 || (v3 = _LogCategory_Initialize(), v3))
        {
          [(CoreCECDeviceProvider *)v3 samStarting_handleActiveSourceReceived];
        }
      }

      [(CoreCECDeviceProvider *)self samStarting_send_SSAM_ON_to_TV];
    }

    else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [(CoreCECDeviceProvider *)self samStarting_handleActiveSourceReceived];
    }
  }

  else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)self samStarting_handleActiveSourceReceived];
  }
}

- (void)samStarting_send_SSAM_ON_to_TV
{
  v6 = 0;
  v3 = [(CoreCECDeviceProvider *)self setSystemAudioModeState:4];
  if (gLogCategory_CoreRCDevice <= 40)
  {
    if (gLogCategory_CoreRCDevice != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      [(CoreCECDeviceProvider *)v3 samStarting_send_SSAM_ON_to_TV];
    }
  }

  if ([(CoreCECDeviceProvider *)self sendMessage:[CECMessage error:"setSystemAudioMode:from:to:" setSystemAudioMode:[(CoreCECDevice *)self logicalAddress] from:0 to:?], &v6])
  {
    [(CoreCECDeviceProvider *)self dispatchSelector:sel_samStarting_handleFeatureAbortResponseTimeout afterDelay:1.0];
    [(CoreCECDeviceProvider *)self setSystemAudioModeState:5];
  }

  else
  {
    [CoreCECDeviceProvider samStarting_send_SSAM_ON_to_TV];
  }
}

- (void)samStarting_handleFeatureAbortResponseTimeout
{
  if ([(CoreCECDeviceProvider *)self systemAudioModeTransitionInProgress])
  {
    if ([(CoreCECDeviceProvider *)self systemAudioModeState]== 5)
    {
      [(CoreCECDeviceProvider *)self setSystemAudioModeState:6];

      [(CoreCECDeviceProvider *)self samStarting_broadcast_SSAM_ON];
    }

    else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [(CoreCECDeviceProvider *)self samStarting_handleFeatureAbortResponseTimeout];
    }
  }

  else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)self samStarting_handleFeatureAbortResponseTimeout];
  }
}

- (void)samStarting_handleFeatureAbortReceived
{
  if ([(CoreCECDeviceProvider *)self systemAudioModeTransitionInProgress])
  {
    if ([(CoreCECDeviceProvider *)self systemAudioModeState]== 5)
    {
      v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6735 userInfo:0];
      [(CoreCECDeviceProvider *)self samResetStateToOff];

      [(CoreCECDeviceProvider *)self samInformDelegateTransitionTo:1 failedWithError:v3];
    }

    else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [(CoreCECDeviceProvider *)self samStarting_handleFeatureAbortReceived];
    }
  }

  else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)self samStarting_handleFeatureAbortReceived];
  }
}

- (void)samStarting_broadcast_SSAM_ON
{
  v6 = 0;
  v3 = [(CoreCECDeviceProvider *)self setSystemAudioModeState:6];
  if (gLogCategory_CoreRCDevice <= 40)
  {
    if (gLogCategory_CoreRCDevice != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      [(CoreCECDeviceProvider *)v3 samStarting_broadcast_SSAM_ON];
    }
  }

  if ([(CoreCECDeviceProvider *)self sendMessage:[CECMessage error:"setSystemAudioMode:from:to:" setSystemAudioMode:[(CoreCECDevice *)self logicalAddress] from:15 to:?], &v6])
  {
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider samStarting_broadcast_SSAM_ON];
    }

    [(CoreCECDeviceProvider *)self setSystemAudioModeState:7];
    [(CoreCECDeviceProvider *)self setSystemAudioModeRequestedByTV:0];
    [(CoreCECDeviceProvider *)self setSystemAudioModeRequestedByOtherDevice:0];
    [(CoreCECDeviceProvider *)self samInformDelegateOfSuccessTransitioningTo:1];
  }

  else
  {
    [(CoreCECDeviceProvider *)gLogCategory_CoreRCDevice samStarting_broadcast_SSAM_ON];
  }
}

- (void)samStopping
{
  v6 = 0;
  v3 = [(CoreCECDeviceProvider *)self setSystemAudioModeState:8];
  if (gLogCategory_CoreRCDevice <= 40)
  {
    if (gLogCategory_CoreRCDevice != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      [(CoreCECDeviceProvider *)v3 samStopping];
    }
  }

  if ([(CoreCECDeviceProvider *)self sendMessage:[CECMessage error:"setSystemAudioMode:from:to:" setSystemAudioMode:[(CoreCECDevice *)self logicalAddress] from:15 to:?], &v6])
  {
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider samStopping];
    }

    [(CoreCECDeviceProvider *)self samResetStateToOff];
    [(CoreCECDeviceProvider *)self samInformDelegateOfSuccessTransitioningTo:0];
  }

  else
  {
    [(CoreCECDeviceProvider *)gLogCategory_CoreRCDevice samStopping];
  }
}

- (void)samResetStateToOff
{
  [(CoreCECDeviceProvider *)self setSystemAudioModeState:0];
  [(CoreCECDeviceProvider *)self setSystemAudioModeRequestedByTV:0];

  [(CoreCECDeviceProvider *)self setSystemAudioModeRequestedByOtherDevice:0];
}

- (void)samInformDelegateOfSuccessTransitioningTo:(unint64_t)to
{
  if ([(CoreCECDeviceProvider *)self isValid])
  {

    [(CoreCECDevice *)self requestSystemAudioModeStatusChangeTo:to didFinishWithResult:1 error:0];
  }
}

- (void)samInformDelegateTransitionTo:(unint64_t)to failedWithError:(id)error
{
  if ([(CoreCECDeviceProvider *)self isValid])
  {

    [(CoreCECDevice *)self requestSystemAudioModeStatusChangeTo:to didFinishWithResult:0 error:error];
  }
}

- (void)arcStarting
{
  v4 = 0;
  v3 = [-[CoreCECDeviceProvider busProvider](self "busProvider")];
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)self arcStarting];
  }

  [(CoreCECDeviceProvider *)self setAudioReturnChannelState:1];
  if (![(CoreCECDeviceProvider *)self initiateARC:v3 error:&v4])
  {
    [CoreCECDeviceProvider arcStarting];
  }
}

- (void)arcStarting_handleReportARCInitiatedReceived
{
  if ([(CoreCECDeviceProvider *)self audioReturnChannelState]!= 1 && gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)self arcStarting_handleReportARCInitiatedReceived];
  }

  [(CoreCECDeviceProvider *)self setAudioReturnChannelState:2];

  [(CoreCECDeviceProvider *)self arcInformDelegateOfSuccessTransitioningTo:1];
}

- (void)arcStarting_handleFeatureAbortReceivedWithOpcode:(unsigned __int8)opcode reason:(unsigned __int8)reason
{
  reasonCopy = reason;
  opcodeCopy = opcode;
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider arcStarting_handleFeatureAbortReceivedWithOpcode:reasonCopy reason:?];
  }

  if ([(CoreCECDeviceProvider *)self audioReturnChannelState]!= 1 && gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider arcStarting_handleFeatureAbortReceivedWithOpcode:? reason:?];
  }

  [(CoreCECDeviceProvider *)self setAudioReturnChannelState:0];
  v7 = [MEMORY[0x277CCA9B8] cecFeatureAbortErrorWithOpCode:opcodeCopy reason:reasonCopy method:@"arcStarting"];

  [(CoreCECDeviceProvider *)self arcInformDelegateTransitionTo:1 failedWithError:v7];
}

- (void)arcStopping
{
  v4 = 0;
  v3 = [-[CoreCECDeviceProvider busProvider](self "busProvider")];
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)self arcStopping];
  }

  [(CoreCECDeviceProvider *)self setAudioReturnChannelState:3];
  if (![(CoreCECDeviceProvider *)self terminateARC:v3 error:&v4])
  {
    [CoreCECDeviceProvider arcStopping];
  }
}

- (void)arcStopping_handleReportARCTerminatedReceived
{
  if ([(CoreCECDeviceProvider *)self audioReturnChannelState]!= 3 && gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)self arcStopping_handleReportARCTerminatedReceived];
  }

  [(CoreCECDeviceProvider *)self setAudioReturnChannelState:0];

  [(CoreCECDeviceProvider *)self arcInformDelegateOfSuccessTransitioningTo:0];
}

- (void)arcStopping_handleFeatureAbortReceivedWithOpcode:(unsigned __int8)opcode reason:(unsigned __int8)reason
{
  reasonCopy = reason;
  opcodeCopy = opcode;
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider arcStopping_handleFeatureAbortReceivedWithOpcode:reasonCopy reason:?];
  }

  if ([(CoreCECDeviceProvider *)self audioReturnChannelState]!= 3 && gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider arcStopping_handleFeatureAbortReceivedWithOpcode:? reason:?];
  }

  [(CoreCECDeviceProvider *)self setAudioReturnChannelState:2];
  v7 = [MEMORY[0x277CCA9B8] cecFeatureAbortErrorWithOpCode:opcodeCopy reason:reasonCopy method:@"arcStopping"];

  [(CoreCECDeviceProvider *)self arcInformDelegateTransitionTo:0 failedWithError:v7];
}

- (void)arcInformDelegateOfSuccessTransitioningTo:(unint64_t)to
{
  if ([(CoreCECDeviceProvider *)self isValid])
  {

    [(CoreCECDevice *)self requestAudioReturnChannelStatusChangeTo:to didFinishWithResult:1 error:0];
  }
}

- (void)arcInformDelegateTransitionTo:(unint64_t)to failedWithError:(id)error
{
  if ([(CoreCECDeviceProvider *)self isValid])
  {

    [(CoreCECDevice *)self requestAudioReturnChannelStatusChangeTo:to didFinishWithResult:0 error:error];
  }
}

- (void)dispatchSelector:(SEL)selector
{
  if ([(CoreCECDeviceProvider *)self isValid])
  {
    serialQueue = [(CoreCECDeviceProvider *)self serialQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __42__CoreCECDeviceProvider_dispatchSelector___block_invoke;
    v6[3] = &unk_278EA2AA0;
    v6[4] = self;
    v6[5] = selector;
    dispatch_async(serialQueue, v6);
  }
}

- (void)dispatchSelector:(SEL)selector withObject:(id)object
{
  if ([(CoreCECDeviceProvider *)self isValid])
  {
    serialQueue = [(CoreCECDeviceProvider *)self serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__CoreCECDeviceProvider_dispatchSelector_withObject___block_invoke;
    block[3] = &unk_278EA4220;
    block[5] = object;
    block[6] = selector;
    block[4] = self;
    dispatch_async(serialQueue, block);
  }
}

- (void)dispatchSelector:(SEL)selector afterDelay:(double)delay
{
  if ([(CoreCECDeviceProvider *)self isValid])
  {
    v7 = dispatch_time(0, (delay * 1000000000.0));
    serialQueue = [(CoreCECDeviceProvider *)self serialQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__CoreCECDeviceProvider_dispatchSelector_afterDelay___block_invoke;
    v9[3] = &unk_278EA2AA0;
    v9[4] = self;
    v9[5] = selector;
    dispatch_after(v7, serialQueue, v9);
  }
}

- (void)dispatchSelector:(SEL)selector withObject:(id)object afterDelay:(double)delay
{
  if ([(CoreCECDeviceProvider *)self isValid])
  {
    v9 = dispatch_time(0, (delay * 1000000000.0));
    serialQueue = [(CoreCECDeviceProvider *)self serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__CoreCECDeviceProvider_dispatchSelector_withObject_afterDelay___block_invoke;
    block[3] = &unk_278EA4220;
    block[5] = object;
    block[6] = selector;
    block[4] = self;
    dispatch_after(v9, serialQueue, block);
  }
}

- (void)hibernationChanged:(BOOL)changed
{
  if (gLogCategory_CoreRCDevice <= 50 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider hibernationChanged:changed];
  }
}

- (id)filterMessage:(id)message toDevice:(id)device
{
  messageCopy = message;
  if ([message shouldBeIgnored])
  {
    if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider filterMessage:messageCopy toDevice:?];
    }

    return 0;
  }

  v7 = [(CoreCECDeviceProvider *)self initiatorAddressErrorDetectedForMessage:messageCopy];
  messageType = [messageCopy messageType];
  if (v7)
  {
    [(CoreCECDevice *)self sendLogicalAddressErrorAnalyticsForMessage:CECMessageTypeString(messageType)];
    return 0;
  }

  if (messageType <= 129)
  {
    if (messageType <= 113)
    {
      switch(messageType)
      {
        case 27:

          return [(CoreCECDeviceProvider *)self filterDeckStatusMessage:messageCopy toDevice:device];
        case 50:

          return [(CoreCECDeviceProvider *)self filterSetMenuLanguageMessage:messageCopy];
        case 71:

          return [(CoreCECDeviceProvider *)self filterSetOSDNameMessage:messageCopy toDevice:device];
        default:
          return messageCopy;
      }
    }

    else if (messageType > 127)
    {
      if (messageType == 128)
      {

        return [(CoreCECDeviceProvider *)self filterRoutingChangeMessage:messageCopy];
      }

      else
      {

        return [(CoreCECDeviceProvider *)self filterRoutingInformationMessage:messageCopy];
      }
    }

    else if (messageType == 114)
    {

      return [(CoreCECDeviceProvider *)self filterSetSystemAudioModeMessage:messageCopy toDevice:device];
    }

    else
    {
      if (messageType != 126)
      {
        return messageCopy;
      }

      return [(CoreCECDeviceProvider *)self filterSystemAudioModeStatusMessage:messageCopy toDevice:device];
    }
  }

  else if (messageType > 143)
  {
    if (messageType > 157)
    {
      if (messageType == 158)
      {

        return [(CoreCECDeviceProvider *)self filterCECVersionMessage:messageCopy toDevice:device];
      }

      else
      {
        if (messageType != 166)
        {
          return messageCopy;
        }

        return [(CoreCECDeviceProvider *)self filterReportFeaturesMessage:messageCopy toDevice:device];
      }
    }

    else if (messageType == 144)
    {

      return [(CoreCECDeviceProvider *)self filterReportPowerStatusMessage:messageCopy toDevice:device];
    }

    else
    {
      if (messageType != 157)
      {
        return messageCopy;
      }

      return [(CoreCECDeviceProvider *)self filterInactiveSourceMessage:messageCopy toDevice:device];
    }
  }

  else if (messageType > 133)
  {
    if (messageType == 134)
    {

      return [(CoreCECDeviceProvider *)self filterSetStreamPathMessage:messageCopy];
    }

    else
    {
      if (messageType != 135)
      {
        return messageCopy;
      }

      return [(CoreCECDeviceProvider *)self filterDeviceVendorIDMessage:messageCopy];
    }
  }

  else if (messageType == 130)
  {

    return [(CoreCECDeviceProvider *)self filterActiveSourceMessage:messageCopy];
  }

  else
  {
    if (messageType != 132)
    {
      return messageCopy;
    }

    return [(CoreCECDeviceProvider *)self filterReportPhysicalAddressMessage:messageCopy];
  }
}

- (void)handleMessage:(id)message fromDevice:(id)device broadcast:(BOOL)broadcast
{
  logicalAddress = [device logicalAddress];
  if (logicalAddress == [(CoreCECDeviceProvider *)self sendFromAddress])
  {
    [CoreCECDeviceProvider handleMessage:device fromDevice:message broadcast:?];
    return;
  }

  messageType = [message messageType];
  if (messageType <= 111)
  {
    if (messageType <= 53)
    {
      if (messageType <= 25)
      {
        if (messageType == -1)
        {
          return;
        }

        if (messageType)
        {
          goto LABEL_117;
        }

        [(CoreCECDeviceProvider *)self handleFeatureAbortMessage:message fromDevice:device];
      }

      else
      {
        if (messageType != 26)
        {
          if (messageType == 27 || messageType == 50)
          {
            return;
          }

          goto LABEL_117;
        }

        [(CoreCECDeviceProvider *)self handleGiveDeckStatusMessage:message fromDevice:device];
      }
    }

    else if (messageType > 67)
    {
      switch(messageType)
      {
        case 'D':

          [(CoreCECDeviceProvider *)self handleUserControlPressedMessage:message fromDevice:device];
          break;
        case 'E':

          [(CoreCECDeviceProvider *)self handleUserControlReleasedMessage:message fromDevice:device];
          break;
        case 'F':

          [(CoreCECDeviceProvider *)self handleGiveOSDNameMessage:message fromDevice:device];
          break;
        default:
          goto LABEL_117;
      }
    }

    else
    {
      switch(messageType)
      {
        case '6':

          [(CoreCECDevice *)self standbyRequestHasBeenReceived:device];
          break;
        case 'A':

          [(CoreCECDeviceProvider *)self handleDeckControlPlayMessage:message fromDevice:device];
          break;
        case 'B':

          [(CoreCECDeviceProvider *)self handleDeckControlMessage:message fromDevice:device];
          break;
        default:
          goto LABEL_117;
      }
    }
  }

  else
  {
    if (messageType <= 192)
    {
      switch(messageType)
      {
        case 112:

          [(CoreCECDeviceProvider *)self handleSystemAudioModeRequestMessage:message fromDevice:device];
          break;
        case 113:

          [(CoreCECDeviceProvider *)self handleGiveAudioStatusMessage:message fromDevice:device];
          break;
        case 114:

          [(CoreCECDeviceProvider *)self handleSetSystemAudioModeMessage:message fromDevice:device];
          break;
        case 115:

          [(CoreCECDeviceProvider *)self handleSetAudioVolumeLevelMessage:message fromDevice:device];
          break;
        case 122:

          [(CoreCECDeviceProvider *)self handleReportAudioStatusMessage:message fromDevice:device];
          break;
        case 125:

          [(CoreCECDeviceProvider *)self handleGiveSystemAudioModeStatusMessage:message fromDevice:device];
          break;
        case 126:
        case 128:
        case 129:
        case 132:
        case 135:
        case 144:
        case 157:
        case 158:
          return;
        case 130:

          [(CoreCECDeviceProvider *)self handleActiveSourceMessage:message fromDevice:device];
          break;
        case 131:

          [(CoreCECDeviceProvider *)self handleGivePhysicalAddressMessage:message fromDevice:device];
          break;
        case 133:

          [(CoreCECDeviceProvider *)self handleRequestActiveSourceMessage:message fromDevice:device];
          break;
        case 134:

          [(CoreCECDeviceProvider *)self handleSetStreamPathMessage:message];
          break;
        case 140:

          [(CoreCECDeviceProvider *)self handleGiveDeviceVendorIDMessage:message fromDevice:device];
          break;
        case 141:

          [(CoreCECDeviceProvider *)self handleMenuRequest:message fromDevice:device];
          break;
        case 143:

          [(CoreCECDeviceProvider *)self handleGiveDevicePowerStatusMessage:message fromDevice:device];
          break;
        case 145:

          [(CoreCECDeviceProvider *)self handleGetMenuLanguageMessage:message fromDevice:device];
          break;
        case 159:

          [(CoreCECDeviceProvider *)self handleGetCECVersionMessage:message fromDevice:device];
          break;
        case 164:

          [(CoreCECDeviceProvider *)self handleRequestShortAudioDescriptorMessage:message fromDevice:device];
          break;
        case 165:
          if (![(CoreCECDevice *)self isCEC2Device])
          {
            goto LABEL_117;
          }

          [(CoreCECDeviceProvider *)self handleGiveFeaturesMessage:message fromDevice:device];
          break;
        default:
          goto LABEL_117;
      }

      return;
    }

    if (messageType <= 194)
    {
      if (messageType == 193)
      {

        [(CoreCECDeviceProvider *)self handleReportARCInitiatedMessage:message fromDevice:device];
      }

      else
      {

        [(CoreCECDeviceProvider *)self handleReportARCTerminatedMessage:message fromDevice:device];
      }
    }

    else
    {
      switch(messageType)
      {
        case 195:

          [(CoreCECDeviceProvider *)self handleRequestARCInitiationMessage:message fromDevice:device];
          break;
        case 196:

          [(CoreCECDeviceProvider *)self handleRequestARCTerminationMessage:message fromDevice:device];
          break;
        case 255:

          [(CoreCECDeviceProvider *)self sendFeatureAbort:4 forMessage:message];
          return;
        default:
LABEL_117:

          [(CoreCECDeviceProvider *)self didNotHandleMessage:message unsupportedOperand:0];
          return;
      }
    }
  }
}

- (void)error:(id)error handlingMessage:(id)message fromDevice:(id)device
{
  if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider error:handlingMessage:fromDevice:]", 60, "Error: %@ in handling message: %@ fromDevice: %@\n", error, message, device);
  }
}

- (void)didNotHandleMessage:(id)message unsupportedOperand:(BOOL)operand
{
  operandCopy = operand;
  if ([message isBroadcast])
  {
    if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      v7 = "unhandled";
      if (operandCopy)
      {
        v7 = "invalid operand in";
      }

      LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider didNotHandleMessage:unsupportedOperand:]", 60, "%s broadcast message: %@\n", v7, message);
    }
  }

  else
  {
    if (operandCopy)
    {
      v8 = 3;
    }

    else
    {
      v8 = 0;
    }

    if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider didNotHandleMessage:v8 unsupportedOperand:message];
    }

    [(CoreCECDeviceProvider *)self sendFeatureAbort:v8 forMessage:message];
  }
}

- (BOOL)handlingRequiredForSystemAudioModeMessage:(id)message
{
  systemAudioControlEnabled = [(CoreCECDevice *)self systemAudioControlEnabled];
  if (!systemAudioControlEnabled)
  {
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider handlingRequiredForSystemAudioModeMessage:?];
    }

    [(CoreCECDeviceProvider *)self sendFeatureAbort:1 forMessage:message];
  }

  return systemAudioControlEnabled;
}

- (BOOL)handlingRequiredForAudioReturnChannelMessage:(id)message
{
  if ([(CoreCECDevice *)self featureSupportStatus:16]== 2)
  {
    audioReturnChannelControlEnabled = [(CoreCECDevice *)self audioReturnChannelControlEnabled];
    v6 = 1;
    if (audioReturnChannelControlEnabled)
    {
      return v6;
    }
  }

  else
  {
    v6 = 0;
  }

  [(CoreCECDeviceProvider *)self sendFeatureAbort:v6 forMessage:message];
  LOBYTE(v6) = 0;
  return v6;
}

- (BOOL)initiatorAddressErrorDetectedForMessage:(id)message
{
  isLocalDevice = [(CoreRCDevice *)self isLocalDevice];
  if (isLocalDevice)
  {
    if ([message loopback])
    {
LABEL_3:
      LOBYTE(isLocalDevice) = 0;
      return isLocalDevice;
    }

    messageType = [message messageType];
    LOBYTE(isLocalDevice) = 1;
    if (((messageType - 130) > 0x24 || ((1 << (messageType + 126)) & 0x1018004025) == 0) && messageType != 27)
    {
      if (gLogCategory_CoreRCDevice > 60)
      {
        goto LABEL_3;
      }

      if (gLogCategory_CoreRCDevice != -1 || (isLocalDevice = _LogCategory_Initialize()) != 0)
      {
        [CoreCECDeviceProvider initiatorAddressErrorDetectedForMessage:message];
        goto LABEL_3;
      }
    }
  }

  return isLocalDevice;
}

- (void)handleFeatureAbortMessage:(id)message fromDevice:(id)device
{
  v9 = 0;
  if ([message parseFeatureAbortOpcode:&v9 + 1 reason:&v9])
  {
    v6 = HIBYTE(v9);
    if (HIBYTE(v9) == 114)
    {
      if (![device logicalAddress] && -[CoreCECDeviceProvider systemAudioModeState](self, "systemAudioModeState") == 5)
      {
        [(CoreCECDeviceProvider *)self samStarting_handleFeatureAbortReceived];
        return;
      }

      v6 = HIBYTE(v9);
    }

    if (v6 == 192 && (v7 = [device logicalAddress], v6 = HIBYTE(v9), !v7))
    {
      [(CoreCECDeviceProvider *)self arcStarting_handleFeatureAbortReceivedWithOpcode:HIBYTE(v9) reason:v9];
    }

    else if (v6 == 197 && (v8 = [device logicalAddress], v6 = HIBYTE(v9), !v8))
    {
      [(CoreCECDeviceProvider *)self arcStopping_handleFeatureAbortReceivedWithOpcode:HIBYTE(v9) reason:v9];
    }

    else if (v6 == 115)
    {
      [(CoreCECDeviceProvider *)self probeAbsoluteVolumeControl_handleFeatureAbortReceivedFromDevice:device withOpcode:115 reason:v9];
    }

    else
    {
      -[CoreCECDevice featureAbort:](self, "featureAbort:", [MEMORY[0x277CCA9B8] cecFeatureAbortErrorWithOpCode:v6 reason:v9 method:@"NYI"]);
    }
  }

  else
  {
    [CoreCECDeviceProvider handleFeatureAbortMessage:fromDevice:];
  }
}

- (id)filterActiveSourceMessage:(id)message
{
  v6 = 0;
  if ([message parseActiveSourcePhysicalAddress:&v6])
  {
    [(CoreCECDevice *)self setPhysicalAddress:v6];
    [-[CoreRCDevice bus](self "bus")];
    [-[CoreCECDeviceProvider busProvider](self "busProvider")];
  }

  else
  {
    [CoreCECDeviceProvider filterActiveSourceMessage:];
  }

  return message;
}

- (void)handleActiveSourceMessage:(id)message fromDevice:(id)device
{
  if ([(CoreCECDevice *)self deviceType:message]== 1)
  {
    systemAudioModeTransitionInProgress = [(CoreCECDeviceProvider *)self systemAudioModeTransitionInProgress];
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      v7 = "NO";
      if (systemAudioModeTransitionInProgress)
      {
        v7 = "YES";
      }

      LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider handleActiveSourceMessage:fromDevice:]", 40, "handleActiveSourceMessage:fromDevice: message=%@, samTransitionInProgress=%s\n", message, v7);
    }

    if (systemAudioModeTransitionInProgress)
    {

      [(CoreCECDeviceProvider *)self samStarting_handleActiveSourceReceived];
    }
  }
}

- (void)handleRequestActiveSourceMessage:(id)message fromDevice:(id)device
{
  if ([(CoreCECDevice *)self isActiveSource])
  {
    v7 = 0;
    if (![(CoreCECDeviceProvider *)self sendActiveSourceStatus:1 error:&v7])
    {
      [(CoreCECDeviceProvider *)self error:v7 handlingMessage:message fromDevice:device];
    }
  }
}

- (id)filterInactiveSourceMessage:(id)message toDevice:(id)device
{
  v7 = 0;
  if ([message parseInactiveSourcePhysicalAddress:{&v7, device}])
  {
    [-[CoreCECDeviceProvider busProvider](self "busProvider")];
  }

  else
  {
    [CoreCECDeviceProvider filterInactiveSourceMessage:toDevice:];
  }

  return message;
}

- (id)filterSetStreamPathMessage:(id)message
{
  messageCopy = message;
  if ([message initiator])
  {
    [(CoreCECDeviceProvider *)messageCopy filterSetStreamPathMessage:?];
    return v7;
  }

  v6 = 0;
  if (([messageCopy parseSetStreamPathPhysicalAddress:&v6] & 1) == 0)
  {
    [CoreCECDeviceProvider filterSetStreamPathMessage:];
    return v7;
  }

  if (v6 == 0xFFFF)
  {
    [(CoreCECDeviceProvider *)messageCopy filterSetStreamPathMessage:?];
    return v7;
  }

  [-[CoreCECDeviceProvider busProvider](self "busProvider")];
  return messageCopy;
}

- (void)handleSetStreamPathMessage:(id)message
{
  busProvider = [-[CoreCECDeviceProvider busProvider](self busProvider];
  if (busProvider == [(CoreCECDevice *)self physicalAddress])
  {

    [(CoreCECDeviceProvider *)self handleDeviceSelected];
  }
}

- (id)filterRoutingChangeMessage:(id)message
{
  v9[1] = *MEMORY[0x277D85DE8];
  busProvider = [(CoreCECDeviceProvider *)self busProvider];
  v7 = 0;
  if (([message parseRoutingChangeOriginalAddress:&v7 + 2 newAddress:&v7] & 1) == 0)
  {
    [CoreCECDeviceProvider filterRoutingChangeMessage:];
    return v8;
  }

  if (!busProvider)
  {
    [CoreCECDeviceProvider filterRoutingChangeMessage:];
    return v8;
  }

  streamPath = [busProvider streamPath];
  if (streamPath != 0xFFFF && HIWORD(v7) == streamPath)
  {
    if (v7 != streamPath)
    {
      [busProvider setActiveSource:0];
      return message;
    }

    [(CoreCECDeviceProvider *)streamPath filterRoutingChangeMessage:v9, message, &v8];
    return v8;
  }

  return message;
}

- (id)filterRoutingInformationMessage:(id)message
{
  v5 = 0;
  if (([message parseRoutingInformationPhysicalAddress:&v5] & 1) == 0)
  {
    [CoreCECDeviceProvider filterRoutingInformationMessage:];
  }

  return message;
}

- (id)filterSetOSDNameMessage:(id)message toDevice:(id)device
{
  v6 = 0;
  if (([message parseSetOSDName:{&v6, device}] & 1) == 0)
  {
    [CoreCECDeviceProvider filterSetOSDNameMessage:toDevice:];
  }

  return message;
}

- (void)handleGiveOSDNameMessage:(id)message fromDevice:(id)device
{
  v7 = [-[CoreCECDeviceProvider busProvider](self "busProvider")];
  v9 = 0;
  if (v7)
  {
    if (!-[CoreCECDeviceProvider setOSDName:to:error:](self, "setOSDName:to:error:", v7, v8 & 0xFFFFFFFFFFFFFFLL, [device logicalAddress], &v9))
    {
      [(CoreCECDeviceProvider *)self error:v9 handlingMessage:message fromDevice:device];
    }
  }

  else
  {

    [(CoreCECDeviceProvider *)self sendFeatureAbort:1 forMessage:message];
  }
}

- (id)filterDeviceVendorIDMessage:(id)message
{
  v6 = 0;
  if ([message parseDeviceVendorID:&v6])
  {
    [(CoreCECDevice *)self setVendorID:v6];
    [-[CoreRCDevice bus](self "bus")];
  }

  else
  {
    [CoreCECDeviceProvider filterDeviceVendorIDMessage:];
  }

  return message;
}

- (void)handleGiveDeviceVendorIDMessage:(id)message fromDevice:(id)device
{
  v7 = 0;
  if ([(CoreCECDevice *)self vendorID]== -1)
  {

    [(CoreCECDeviceProvider *)self didNotHandleMessage:message unsupportedOperand:0];
  }

  else if (![(CoreCECDeviceProvider *)self deviceVendorID:[(CoreCECDevice *)self vendorID] error:&v7])
  {
    [(CoreCECDeviceProvider *)self error:v7 handlingMessage:message fromDevice:device];
  }
}

- (id)filterCECVersionMessage:(id)message toDevice:(id)device
{
  v7 = 0;
  if ([message parseCECVersion:{&v7, device}])
  {
    [(CoreCECDevice *)self setCecVersion:v7];
    [-[CoreRCDevice bus](self "bus")];
  }

  else
  {
    [CoreCECDeviceProvider filterCECVersionMessage:toDevice:];
  }

  return message;
}

- (void)handleGetCECVersionMessage:(id)message fromDevice:(id)device
{
  v7 = 0;
  if (!-[CoreCECDeviceProvider cecVersion:to:error:](self, "cecVersion:to:error:", -[CoreCECDevice cecVersion](self, "cecVersion"), [device logicalAddress], &v7))
  {
    [(CoreCECDeviceProvider *)self error:v7 handlingMessage:message fromDevice:device];
  }
}

- (id)filterReportPhysicalAddressMessage:(id)message
{
  v7 = 0;
  v6 = 0;
  if ([message parseReportPhysicalAddress:&v7 deviceType:&v6])
  {
    [(CoreCECDevice *)self setPhysicalAddress:v7];
    [(CoreCECDevice *)self setDeviceType:v6];
    [-[CoreRCDevice bus](self "bus")];
  }

  else
  {
    [CoreCECDeviceProvider filterReportPhysicalAddressMessage:];
  }

  return message;
}

- (void)handleGivePhysicalAddressMessage:(id)message fromDevice:(id)device
{
  v7 = 0;
  if (![(CoreCECDeviceProvider *)self reportPhysicalAddress:&v7])
  {
    [(CoreCECDeviceProvider *)self error:v7 handlingMessage:message fromDevice:device];
  }
}

- (void)handleGetMenuLanguageMessage:(id)message fromDevice:(id)device
{
  if ([(CoreCECDevice *)self deviceType]== 7 && (![(CoreCECDevice *)self logicalAddress]|| [(CoreCECDevice *)self logicalAddress]== 14))
  {
    v7 = 0;
    if (!-[CoreCECDeviceProvider setMenuLanguage:error:](self, "setMenuLanguage:error:", [-[CoreCECDeviceProvider busProvider](self "busProvider")] & 0xFFFFFF, &v7))
    {
      [(CoreCECDeviceProvider *)self error:v7 handlingMessage:message fromDevice:device];
    }
  }

  else
  {

    [(CoreCECDeviceProvider *)self didNotHandleMessage:message unsupportedOperand:0];
  }
}

- (void)handleGiveFeaturesMessage:(id)message fromDevice:(id)device
{
  v7 = 0;
  if (![(CoreCECDeviceProvider *)self reportFeatures:&v7])
  {
    [(CoreCECDeviceProvider *)self error:v7 handlingMessage:message fromDevice:device];
  }
}

- (id)filterReportPowerStatusMessage:(id)message toDevice:(id)device
{
  v7 = 0;
  if ([message parseReportPowerStatus:{&v7, device}])
  {
    [(CoreCECDevice *)self setPowerStatus:v7];
    [-[CoreRCDevice bus](self "bus")];
  }

  else
  {
    [CoreCECDeviceProvider filterReportPowerStatusMessage:toDevice:];
  }

  return message;
}

- (void)handleGiveDevicePowerStatusMessage:(id)message fromDevice:(id)device
{
  v9 = 0;
  v8 = 0;
  if (CECPowerStatusForCoreCECPowerStatus(&v8, [(CoreCECDevice *)self powerStatus]))
  {
    v7 = v8;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (!-[CoreCECDeviceProvider reportPowerStatus:to:error:](self, "reportPowerStatus:to:error:", v7, [device logicalAddress], &v9))
  {
    [(CoreCECDeviceProvider *)self error:v9 handlingMessage:message fromDevice:device];
  }
}

- (void)handleDeckControlPlayMessage:(id)message fromDevice:(id)device
{
  v7 = 0;
  if ([message parsePlayMode:&v7])
  {
    [(CoreCECDevice *)self deckControlPlayHasBeenReceived:v7 fromDevice:device];
  }

  else
  {
    [(CoreCECDeviceProvider *)self didNotHandleMessage:message unsupportedOperand:1];
  }
}

- (void)handleDeckControlMessage:(id)message fromDevice:(id)device
{
  v7 = 0;
  if ([message parseDeckControlMode:&v7])
  {
    [(CoreCECDevice *)self deckControlCommandHasBeenReceived:v7 fromDevice:device];
  }

  else
  {
    [(CoreCECDeviceProvider *)self didNotHandleMessage:message unsupportedOperand:1];
  }
}

- (id)filterDeckStatusMessage:(id)message toDevice:(id)device
{
  v8 = 0;
  if ([message parseDeckStatusInfo:&v8])
  {
    [(CoreCECDevice *)self setDeckStatus:v8];
    [-[CoreRCDevice bus](self "bus")];
    [device deckControlStatusHasBeenUpdated:v8 fromDevice:self];
  }

  else
  {
    [CoreCECDeviceProvider filterDeckStatusMessage:toDevice:];
  }

  return message;
}

- (void)handleGiveDeckStatusMessage:(id)message fromDevice:(id)device
{
  v12 = 0;
  if (([message parseGiveDeckStatusRequest:&v12] & 1) == 0)
  {
    selfCopy2 = self;
    messageCopy2 = message;
    v11 = 1;
LABEL_27:
    [(CoreCECDeviceProvider *)selfCopy2 didNotHandleMessage:messageCopy2 unsupportedOperand:v11];
    return;
  }

  deviceType = [(CoreCECDevice *)self deviceType];
  if (deviceType != 4 && deviceType != 2)
  {
    if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider handleGiveDeckStatusMessage:fromDevice:]", 60, "received <Deck Status> inappropriate for device type %@ (from %@)\n", self, device);
    }

    selfCopy2 = self;
    messageCopy2 = message;
    v11 = 0;
    goto LABEL_27;
  }

  v8 = v12;
  if (v12 == 1)
  {
    if (![(CoreCECDevice *)self deckStatus])
    {
LABEL_34:
      [(CoreCECDeviceProvider *)self sendFeatureAbort:1 forMessage:message];
      return;
    }

    if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider handleGiveDeckStatusMessage:device fromDevice:?];
    }

    self->_deckStatusRequestMask |= 1 << [device logicalAddress];
LABEL_21:
    [(CoreCECDeviceProvider *)self sendDeckStatusToDevice:device];
    return;
  }

  if (v12 == 3)
  {
    if (![(CoreCECDevice *)self deckStatus])
    {
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  if (v12 != 2)
  {
    if (gLogCategory_CoreRCDevice > 90)
    {
      return;
    }

    if (gLogCategory_CoreRCDevice == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v8 = v12;
    }

    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider handleGiveDeckStatusMessage:fromDevice:]", 90, "missing handler for <Deck Status> request type %u (sent by %@)\n", v8, device);
    return;
  }

  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider handleGiveDeckStatusMessage:device fromDevice:?];
  }

  self->_deckStatusRequestMask &= ~(1 << [device logicalAddress]);
}

- (void)handleMenuRequest:(id)request fromDevice:(id)device
{
  v8 = 0;
  v7 = 0;
  if ([request parseMenuRequest:&v7])
  {
    if (!-[CoreCECDeviceProvider menuStatus:to:error:](self, "menuStatus:to:error:", 0, [request initiator], &v8))
    {
      [(CoreCECDeviceProvider *)self error:v8 handlingMessage:request fromDevice:device];
    }
  }

  else
  {
    [(CoreCECDeviceProvider *)self didNotHandleMessage:request unsupportedOperand:1];
  }
}

- (void)handleUserControlPressedMessage:(id)message fromDevice:(id)device
{
  v9 = 0;
  if ([message parseUserControlPressed:&v9])
  {
    p_userControlFollowerState = &self->_userControlFollowerState;
    if (self->_userControlFollowerState.isValid && CECUserControlEquals(*&self->_userControlFollowerState.control, v9) && [(CoreRCDevice *)p_userControlFollowerState->sender isEqual:device])
    {
      [(CoreCECDeviceProvider *)self userControlScheduleFollowerSafetyTimeout];
      if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [CoreCECDeviceProvider handleUserControlPressedMessage:&v9 fromDevice:?];
      }
    }

    else
    {
      v8 = 0;
      if (self->_userControlFollowerState.isValid)
      {
        [(CoreCECDeviceProvider *)self userControlFollowerSynthesizeRelease];
      }

      if ([(CoreCECDeviceProvider *)self handleUserControl:v9 pressed:1 fromDevice:device abortReason:&v8])
      {
        self->_userControlFollowerState.control = v9;
        p_userControlFollowerState->sender = device;
        self->_userControlFollowerState.isValid = 1;
        [(CoreCECDeviceProvider *)self userControlScheduleFollowerSafetyTimeout];
      }

      else
      {
        [(CoreCECDeviceProvider *)self sendFeatureAbort:v8 forMessage:message];
      }
    }
  }

  else
  {
    [(CoreCECDeviceProvider *)self didNotHandleMessage:message unsupportedOperand:1];
  }
}

- (void)handleUserControlReleasedMessage:(id)message fromDevice:(id)device
{
  p_userControlFollowerState = &self->_userControlFollowerState;
  if (self->_userControlFollowerState.isValid)
  {
    if ([(CoreRCDevice *)p_userControlFollowerState->sender isEqual:device])
    {
      [(CoreCECDeviceProvider *)self userControlCancelFollowerSafetyTimeout];
      [(CoreCECDeviceProvider *)self handleUserControl:*&p_userControlFollowerState->control pressed:0 fromDevice:device abortReason:0];
      p_userControlFollowerState->isValid = 0;

      p_userControlFollowerState->sender = 0;
    }

    else
    {
      [(CoreCECDeviceProvider *)p_userControlFollowerState handleUserControlReleasedMessage:message fromDevice:device];
    }
  }

  else
  {
    [CoreCECDeviceProvider handleUserControlReleasedMessage:message fromDevice:device];
  }
}

- (BOOL)handleUserControl:(CECUserControl)control pressed:(BOOL)pressed fromDevice:(id)device abortReason:(unsigned __int8 *)reason
{
  pressedCopy = pressed;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider handleUserControl:pressedCopy pressed:*&control fromDevice:? abortReason:?];
  }

  v11 = [CoreRCHIDEvent alloc];
  if (!v11)
  {
    v16 = 4;
LABEL_11:
    [(CoreCECDeviceProvider *)reason handleUserControl:v16 pressed:pressedCopy fromDevice:*&control abortReason:&v17];
    return v17;
  }

  v12 = v11;
  [(CoreCECDeviceProvider *)self audioStatusHandleUserControl:control pressed:pressedCopy];
  v13 = [(CoreRCHIDEvent *)v12 initWithCECUserControl:control pressed:pressedCopy];
  if (!v13)
  {
    v16 = 3;
    goto LABEL_11;
  }

  v14 = v13;
  [(CoreRCDevice *)self receivedHIDEvent:v13 fromDevice:device];

  return 1;
}

- (void)handleReportAudioStatusMessage:(id)message fromDevice:(id)device
{
  v8 = 0;
  v9 = 0;
  v7 = 0;
  if ([message parseReportAudioStatus:&v8 muteStatus:&v7])
  {
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider handleReportAudioStatusMessage:&v7 fromDevice:?];
    }

    if (([device setAudioVolumeStatus:v8 error:&v9] & 1) == 0 && gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider handleReportAudioStatusMessage:fromDevice:];
    }

    if (([device setAudioMuteStatus:v7 error:&v9] & 1) == 0 && gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider handleReportAudioStatusMessage:fromDevice:];
    }

    [(CoreCECDevice *)self audioStatusReceived:v8 muteStatus:v7];
  }

  else
  {
    [CoreCECDeviceProvider handleReportAudioStatusMessage:message fromDevice:?];
  }
}

- (void)handleGiveAudioStatusMessage:(id)message fromDevice:(id)device
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider handleGiveAudioStatusMessage:fromDevice:]", 40, "message: %@  ## self: %@\n", message, self);
  }

  if (-[CoreCECDeviceProvider handlingRequiredForSystemAudioModeMessage:](self, "handlingRequiredForSystemAudioModeMessage:", message) && ([message isBroadcast] & 1) == 0)
  {
    logicalAddress = [device logicalAddress];

    [(CoreCECDeviceProvider *)self reportAudioStatusTo:logicalAddress error:0];
  }
}

- (void)handleGiveSystemAudioModeStatusMessage:(id)message fromDevice:(id)device
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider handleGiveSystemAudioModeStatusMessage:fromDevice:]", 40, "message: %@  ## self: %@\n", message, self);
  }

  if (-[CoreCECDeviceProvider handlingRequiredForSystemAudioModeMessage:](self, "handlingRequiredForSystemAudioModeMessage:", message) && ([message isBroadcast] & 1) == 0)
  {
    v7 = +[CECMessage systemAudioModeStatus:from:to:](CECMessage, "systemAudioModeStatus:from:to:", [-[CoreCECDeviceProvider busProvider](self "busProvider")], -[CoreCECDeviceProvider sendFromAddress](self, "sendFromAddress"), objc_msgSend(device, "logicalAddress"));

    [(CoreCECDeviceProvider *)self sendMessage:v7 error:0];
  }
}

- (id)filterSetSystemAudioModeMessage:(id)message toDevice:(id)device
{
  if ([message initiator] != 5 && gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider filterSetSystemAudioModeMessage:message toDevice:?];
  }

  if ([message isBroadcast])
  {
    v7 = 0;
    if ([message parseSystemAudioModeStatus:&v7])
    {
      [-[CoreCECDeviceProvider busProvider](self "busProvider")];
    }

    else
    {
      [CoreCECDeviceProvider filterSetSystemAudioModeMessage:toDevice:];
    }
  }

  return message;
}

- (void)handleRequestShortAudioDescriptorMessage:(id)message fromDevice:(id)device
{
  v24 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v22 = 0;
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider handleRequestShortAudioDescriptorMessage:fromDevice:];
  }

  if ([(CoreCECDeviceProvider *)self handlingRequiredForSystemAudioModeMessage:message])
  {
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider handleRequestShortAudioDescriptorMessage:message fromDevice:v21];
    }

    v7 = 0;
    if (message)
    {
      for (i = 2; ; ++i)
      {
        objc_msgSend_frame(message);
        if (i >= (v20 & 0x1Fu))
        {
          break;
        }

        objc_msgSend_frame(message);
        v9 = v17[i];
        if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
        {
          [CoreCECDeviceProvider handleRequestShortAudioDescriptorMessage:fromDevice:];
        }

        audioFormats = [(CoreCECDevice *)self audioFormats];
        v11 = -[NSDictionary objectForKey:](audioFormats, "objectForKey:", [MEMORY[0x277CCABB0] numberWithUnsignedChar:v9]);
        if (v11)
        {
          v12 = v11;
          if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
          {
            [CoreCECDeviceProvider handleRequestShortAudioDescriptorMessage:v12 fromDevice:?];
          }

          bytes = [v12 bytes];
          if (bytes)
          {
            for (j = 0; j != 3; ++j)
            {
              if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider handleRequestShortAudioDescriptorMessage:fromDevice:]", 40, "  bytes[%u] = 0x%02x\n", j, *(bytes + j));
              }
            }
          }

          v15 = *bytes;
          v16 = &v22 + v7;
          v16[2] = *(bytes + 2);
          *v16 = v15;
          v7 += 3;
        }
      }
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
    }

    if (v7)
    {
      -[CoreCECDeviceProvider sendMessage:error:](self, "sendMessage:error:", +[CECMessage reportShortAudioDescriptor:length:from:to:](CECMessage, "reportShortAudioDescriptor:length:from:to:", &v22, v7, -[CoreCECDevice logicalAddress](self, "logicalAddress"), [device logicalAddress]), 0);
    }

    else
    {
      if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [CoreCECDeviceProvider handleRequestShortAudioDescriptorMessage:fromDevice:];
      }

      [(CoreCECDeviceProvider *)self sendFeatureAbort:3 forMessage:message];
    }
  }
}

- (void)handleSetSystemAudioModeMessage:(id)message fromDevice:(id)device
{
  if (([message isBroadcast] & 1) == 0)
  {
    if ([(CoreCECDevice *)self deviceType]== 7)
    {
      if ([message initiator] != 5 && gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [CoreCECDeviceProvider handleSetSystemAudioModeMessage:message fromDevice:?];
      }
    }

    else
    {

      [(CoreCECDeviceProvider *)self didNotHandleMessage:message unsupportedOperand:0];
    }
  }
}

- (void)handleSystemAudioModeRequestMessage:(id)message fromDevice:(id)device
{
  if (-[CoreCECDeviceProvider handlingRequiredForSystemAudioModeMessage:](self, "handlingRequiredForSystemAudioModeMessage:") && ([message isBroadcast] & 1) == 0 && -[CoreCECDevice deviceType](self, "deviceType") == 1)
  {
    if (!message || (objc_msgSend_frame(message), (v12 & 0x1F) != 2) && (objc_msgSend_frame(message), (v11 & 0x1F) != 4))
    {
      if (gLogCategory_CoreRCDevice <= 50 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [CoreCECDeviceProvider handleSystemAudioModeRequestMessage:message fromDevice:?];
        if (!message)
        {
          goto LABEL_20;
        }
      }

      else if (!message)
      {
        goto LABEL_20;
      }
    }

    objc_msgSend_frame(message);
    if ((v10 & 0x1C) != 0)
    {
      objc_msgSend_frame(message);
      objc_msgSend_frame(message);
      if ([device deviceType] == 7)
      {
        [(CoreCECDeviceProvider *)self setSystemAudioModeRequestedByTV:1];
      }

      else
      {
        [(CoreCECDeviceProvider *)self setSystemAudioModeRequestedByOtherDevice:1];
      }

      if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [CoreCECDeviceProvider handleSystemAudioModeRequestMessage:? fromDevice:?];
      }

      v7 = 1;
LABEL_24:
      [(CoreCECDevice *)self receivedRequestSystemAudioModeStatusChangeTo:v7 fromDevice:device];
      return;
    }

LABEL_20:
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider handleSystemAudioModeRequestMessage:fromDevice:];
    }

    v7 = 0;
    goto LABEL_24;
  }
}

- (void)handleSetAudioVolumeLevelMessage:(id)message fromDevice:(id)device
{
  v10 = *MEMORY[0x277D85DE8];
  if (message)
  {
    objc_msgSend_frame(message, a2);
    v6 = BYTE2(v7);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider handleSetAudioVolumeLevelMessage:fromDevice:]", 40, "Received <Set Audio Volume Level>[%u] message  # %@\n", v6, self, v7, v8, v9, v10);
  }

  if (v6 > 0x64)
  {
    if (v6 == 127)
    {
      if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [CoreCECDeviceProvider handleSetAudioVolumeLevelMessage:fromDevice:];
      }
    }

    else
    {
      if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [CoreCECDeviceProvider handleSetAudioVolumeLevelMessage:fromDevice:];
      }

      -[CoreCECDeviceProvider featureAbort:reason:to:error:](self, "featureAbort:reason:to:error:", 115, 3, [device logicalAddress], 0);
    }
  }

  else
  {
    [(CoreCECDeviceProvider *)self receivedSetAudioVolumeLevel:v6 fromDevice:device];
  }
}

- (id)filterSystemAudioModeStatusMessage:(id)message toDevice:(id)device
{
  if ([message initiator] != 5 && gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider filterSystemAudioModeStatusMessage:message toDevice:?];
  }

  v7 = 0;
  if ([message parseSystemAudioModeStatus:&v7])
  {
    [-[CoreCECDeviceProvider busProvider](self "busProvider")];
  }

  else
  {
    [CoreCECDeviceProvider filterSystemAudioModeStatusMessage:toDevice:];
  }

  return message;
}

- (void)handleRequestARCInitiationMessage:(id)message fromDevice:(id)device
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider handleRequestARCInitiationMessage:fromDevice:]", 40, "Message: %@  ## self: %@\n", message, self);
  }

  v7 = [(CoreCECDeviceProvider *)self handlingRequiredForAudioReturnChannelMessage:message];
  if (v7)
  {
    if (gLogCategory_CoreRCDevice <= 40)
    {
      if (gLogCategory_CoreRCDevice != -1 || (v7 = _LogCategory_Initialize(), v7))
      {
        [(CoreCECDeviceProvider *)v7 handleRequestARCInitiationMessage:v8 fromDevice:v9];
      }
    }

    [(CoreCECDevice *)self receivedRequestAudioReturnChannelStatusChangeTo:1 fromDevice:device];
  }
}

- (void)handleReportARCInitiatedMessage:(id)message fromDevice:(id)device
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider handleReportARCInitiatedMessage:fromDevice:]", 40, "Message: %@  ## self: %@\n", message, self);
  }

  if ([(CoreCECDeviceProvider *)self handlingRequiredForAudioReturnChannelMessage:message])
  {

    [(CoreCECDeviceProvider *)self arcStarting_handleReportARCInitiatedReceived];
  }
}

- (void)handleRequestARCTerminationMessage:(id)message fromDevice:(id)device
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider handleRequestARCTerminationMessage:fromDevice:]", 40, "Message: %@  ## self: %@\n", message, self);
  }

  v7 = [(CoreCECDeviceProvider *)self handlingRequiredForAudioReturnChannelMessage:message];
  if (v7)
  {
    if (gLogCategory_CoreRCDevice <= 40)
    {
      if (gLogCategory_CoreRCDevice != -1 || (v7 = _LogCategory_Initialize(), v7))
      {
        [(CoreCECDeviceProvider *)v7 handleRequestARCTerminationMessage:v8 fromDevice:v9];
      }
    }

    [(CoreCECDevice *)self receivedRequestAudioReturnChannelStatusChangeTo:0 fromDevice:device];
  }
}

- (void)handleReportARCTerminatedMessage:(id)message fromDevice:(id)device
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider handleReportARCTerminatedMessage:fromDevice:]", 40, "Message: %@  ## self: %@\n", message, self);
  }

  if ([(CoreCECDeviceProvider *)self handlingRequiredForAudioReturnChannelMessage:message])
  {

    [(CoreCECDeviceProvider *)self arcStopping_handleReportARCTerminatedReceived];
  }
}

- (BOOL)sendActiveSourceStatus:(BOOL)status error:(id *)error
{
  if (status)
  {
    return [(CoreCECDeviceProvider *)self activeSource:error];
  }

  else
  {
    return [(CoreCECDeviceProvider *)self inactiveSourceTo:status error:error];
  }
}

- (BOOL)sendMessage:(id)message withRetryCount:(unsigned __int8)count error:(id *)error
{
  countCopy = count;
  busProvider = [(CoreCECDeviceProvider *)self busProvider];
  v13 = 0;
  if (message)
  {
    v11 = busProvider;
    if (busProvider)
    {
      if ([busProvider sendMessage:message withRetryCount:countCopy error:&v13])
      {
        return 1;
      }

      if ([v13 isCECAcknowledgementError] && objc_msgSend(message, "destination") == 5 && objc_msgSend(v11, "systemAudioModeStatus") == 2)
      {
        if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
        {
          [CoreCECDeviceProvider sendMessage:withRetryCount:error:];
        }

        [v11 setSystemAudioModeStatus:1];
        if ([message messageType] != 125)
        {
          [(CoreCECDeviceProvider *)self refreshSystemAudioModeStatus];
        }
      }

      if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider sendMessage:withRetryCount:error:]", 90, "TX: error sending message %@: %@\n", message, v13);
      }
    }

    else
    {
      [CoreCECDeviceProvider sendMessage:? withRetryCount:? error:?];
    }
  }

  else
  {
    [CoreIRDeviceProvider setOSDName:v10 error:?];
  }

  result = 0;
  if (error)
  {
    *error = v13;
  }

  return result;
}

- (BOOL)activeSource:(id *)source
{
  v5 = [CECMessage activeSourceFrom:[(CoreCECDeviceProvider *)self sendFromAddress] physicalAddress:[(CoreCECDevice *)self physicalAddress]];

  return [(CoreCECDeviceProvider *)self sendMessage:v5 error:source];
}

- (BOOL)imageViewOnTo:(unsigned __int8)to error:(id *)error
{
  v6 = [CECMessage imageViewOnFrom:[(CoreCECDeviceProvider *)self sendFromAddress] to:to];

  return [(CoreCECDeviceProvider *)self sendMessage:v6 error:error];
}

- (BOOL)textViewOnTo:(unsigned __int8)to error:(id *)error
{
  v6 = [CECMessage textViewOnFrom:[(CoreCECDeviceProvider *)self sendFromAddress] to:to];

  return [(CoreCECDeviceProvider *)self sendMessage:v6 error:error];
}

- (BOOL)oneTouchPlayWithMenu:(BOOL)menu to:(unsigned __int8)to error:(id *)error
{
  if (menu)
  {
    if ([(CoreCECDeviceProvider *)self imageViewOnTo:to error:error])
    {
      goto LABEL_8;
    }
  }

  else if ([(CoreCECDeviceProvider *)self textViewOnTo:to error:error])
  {
    goto LABEL_8;
  }

  if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider oneTouchPlayWithMenu:? to:? error:?];
  }

LABEL_8:

  return [(CoreCECDeviceProvider *)self activeSource:error];
}

- (BOOL)inactiveSourceTo:(unsigned __int8)to error:(id *)error
{
  v6 = [CECMessage inactiveSourceFrom:[(CoreCECDeviceProvider *)self sendFromAddress] to:to physicalAddress:[(CoreCECDevice *)self physicalAddress]];

  return [(CoreCECDeviceProvider *)self sendMessage:v6 error:error];
}

- (BOOL)requestActiveSource:(id *)source
{
  v5 = [CECMessage requestActiveSourceFrom:[(CoreCECDeviceProvider *)self sendFromAddress]];

  return [(CoreCECDeviceProvider *)self sendMessage:v5 error:source];
}

- (BOOL)routingChangeOriginalAddress:(unsigned __int16)address newAddress:(unsigned __int16)newAddress error:(id *)error
{
  v7 = [CECMessage routingChangeFrom:[(CoreCECDeviceProvider *)self sendFromAddress] originalAddress:address newAddress:newAddress];

  return [(CoreCECDeviceProvider *)self sendMessage:v7 error:error];
}

- (BOOL)routingInformationPhysicalAddress:(unsigned __int16)address error:(id *)error
{
  v6 = [CECMessage routingInformationFrom:[(CoreCECDeviceProvider *)self sendFromAddress] physicalAddress:address];

  return [(CoreCECDeviceProvider *)self sendMessage:v6 error:error];
}

- (BOOL)setStreamPathPhysicalAddress:(unsigned __int16)address error:(id *)error
{
  v6 = [CECMessage setStreamPathFrom:[(CoreCECDeviceProvider *)self sendFromAddress] physicalAddress:address];

  return [(CoreCECDeviceProvider *)self sendMessage:v6 error:error];
}

- (BOOL)standbyTo:(unsigned __int8)to error:(id *)error
{
  v6 = [CECMessage standbyFrom:[(CoreCECDeviceProvider *)self sendFromAddress] to:to];

  return [(CoreCECDeviceProvider *)self sendMessage:v6 error:error];
}

- (BOOL)cecVersion:(unsigned __int8)version to:(unsigned __int8)to error:(id *)error
{
  v7 = [CECMessage cecVersion:version from:[(CoreCECDeviceProvider *)self sendFromAddress] to:to];

  return [(CoreCECDeviceProvider *)self sendMessage:v7 error:error];
}

- (BOOL)getCECVersionTo:(unsigned __int8)to error:(id *)error
{
  v6 = [CECMessage getCECVersionFrom:[(CoreCECDeviceProvider *)self sendFromAddress] to:to];

  return [(CoreCECDeviceProvider *)self sendMessage:v6 error:error];
}

- (BOOL)givePhysicalAddressTo:(unsigned __int8)to error:(id *)error
{
  v6 = [CECMessage givePhysicalAddressFrom:[(CoreCECDeviceProvider *)self sendFromAddress] to:to];

  return [(CoreCECDeviceProvider *)self sendMessage:v6 error:error];
}

- (BOOL)getMenuLanguageTo:(unsigned __int8)to error:(id *)error
{
  v6 = [CECMessage getMenuLanguageFrom:[(CoreCECDeviceProvider *)self sendFromAddress] to:to];

  return [(CoreCECDeviceProvider *)self sendMessage:v6 error:error];
}

- (BOOL)pollTo:(unsigned __int8)to error:(id *)error
{
  v6 = [CECMessage pollFrom:[(CoreCECDeviceProvider *)self sendFromAddress] to:to];

  return [(CoreCECDeviceProvider *)self sendMessage:v6 withRetryCount:2 error:error];
}

- (BOOL)reportPhysicalAddress:(id *)address
{
  v7 = 0;
  if (CECDeviceTypeForCoreCECDeviceType(&v7, [(CoreCECDevice *)self deviceType]))
  {
    physicalAddress = [(CoreCECDevice *)self physicalAddress];
    return [(CoreCECDeviceProvider *)self sendMessage:[CECMessage error:"reportPhysicalAddress:deviceType:from:" reportPhysicalAddress:physicalAddress deviceType:v7 from:[(CoreCECDeviceProvider *)self sendFromAddress]], address];
  }

  else
  {
    [(CoreCECDeviceProvider *)address reportPhysicalAddress:?];
    return v8;
  }
}

- (BOOL)setMenuLanguage:(CECLanguage)language error:(id *)error
{
  v6 = [CECMessage setMenuLanguage:*language.characters & 0xFFFFFF from:[(CoreCECDeviceProvider *)self sendFromAddress]];

  return [(CoreCECDeviceProvider *)self sendMessage:v6 error:error];
}

- (BOOL)reportFeatures:(id *)features
{
  v12 = 0;
  v11 = 0;
  v10 = 0;
  if (CECAllDeviceTypesMaskForCoreCECDeviceTypesMask(&v12, [(CoreCECDevice *)self allDeviceTypes]))
  {
    if (CECDeviceFeaturesMaskForCoreCECDeviceFeaturesMask(&v11, [(CoreCECDevice *)self deviceFeatures], [(CoreCECDevice *)self deviceType]))
    {
      if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [(CoreCECDeviceProvider *)self reportFeatures:?];
      }

      if (CECRCProfileForCoreCECRCProfile(&v10, [(CoreCECDevice *)self rcProfile]))
      {
        cecVersion = [(CoreCECDevice *)self cecVersion];
        v6 = v12;
        v7 = v11;
        sendFromAddress = [(CoreCECDeviceProvider *)self sendFromAddress];
        return [(CoreCECDeviceProvider *)self sendMessage:[CECMessage error:"reportFeaturesWith:deviceTypes:rcProfile:deviceFeatures:from:" reportFeaturesWith:cecVersion deviceTypes:v6 rcProfile:v10 deviceFeatures:v7 from:sendFromAddress], features];
      }

      else
      {
        [(CoreCECDeviceProvider *)features reportPhysicalAddress:?];
        return v15;
      }
    }

    else
    {
      [(CoreCECDeviceProvider *)features reportPhysicalAddress:?];
      return v14;
    }
  }

  else
  {
    [(CoreCECDeviceProvider *)features reportPhysicalAddress:?];
    return v13;
  }
}

- (BOOL)deckControlWithMode:(unint64_t)mode to:(unsigned __int8)to error:(id *)error
{
  toCopy = to;
  v9 = 0;
  if (CECDeckControlModeForCoreCECDeckControlMode(&v9, mode))
  {
    return [(CoreCECDeviceProvider *)self sendMessage:[CECMessage error:"deckControlWithMode:from:to:" deckControlWithMode:v9 from:[(CoreCECDeviceProvider *)self sendFromAddress] to:toCopy], error];
  }

  [(CoreCECDeviceProvider *)error reportPhysicalAddress:?];
  return v10;
}

- (BOOL)deckStatusWithInfo:(unint64_t)info to:(unsigned __int8)to error:(id *)error
{
  toCopy = to;
  v9 = 0;
  if (CECDeckInfoForCoreCECDeckInfo(&v9, info))
  {
    return [(CoreCECDeviceProvider *)self sendMessage:[CECMessage error:"deckStatusWithInfo:from:to:" deckStatusWithInfo:v9 from:[(CoreCECDeviceProvider *)self sendFromAddress] to:toCopy], error];
  }

  [(CoreCECDeviceProvider *)error reportPhysicalAddress:?];
  return v10;
}

- (BOOL)giveDeckStatusWithRequest:(unsigned __int8)request to:(unsigned __int8)to error:(id *)error
{
  v7 = [CECMessage giveDeckStatusWithRequest:request from:[(CoreCECDeviceProvider *)self sendFromAddress] to:to];

  return [(CoreCECDeviceProvider *)self sendMessage:v7 error:error];
}

- (BOOL)playWithMode:(unint64_t)mode to:(unsigned __int8)to error:(id *)error
{
  toCopy = to;
  v9 = 0;
  if (CECPlayModeForCoreCECPlayMode(&v9, mode))
  {
    return [(CoreCECDeviceProvider *)self sendMessage:[CECMessage error:"playWithMode:from:to:" playWithMode:v9 from:[(CoreCECDeviceProvider *)self sendFromAddress] to:toCopy], error];
  }

  [(CoreCECDeviceProvider *)error reportPhysicalAddress:?];
  return v10;
}

- (BOOL)deviceVendorID:(unsigned int)d error:(id *)error
{
  v6 = [CECMessage deviceVendorID:*&d from:[(CoreCECDeviceProvider *)self sendFromAddress]];

  return [(CoreCECDeviceProvider *)self sendMessage:v6 error:error];
}

- (BOOL)giveDeviceVendorIDTo:(unsigned __int8)to error:(id *)error
{
  v6 = [CECMessage giveDeviceVendorIDFrom:[(CoreCECDeviceProvider *)self sendFromAddress] to:to];

  return [(CoreCECDeviceProvider *)self sendMessage:v6 error:error];
}

- (BOOL)giveOSDNameTo:(unsigned __int8)to error:(id *)error
{
  v6 = [CECMessage giveOSDNameFrom:[(CoreCECDeviceProvider *)self sendFromAddress] to:to];

  return [(CoreCECDeviceProvider *)self sendMessage:v6 error:error];
}

- (BOOL)setOSDName:(CECOSDName)name to:(unsigned __int8)to error:(id *)error
{
  v7 = [CECMessage setOSDName:*&name.length from:*&name.characters[7] & 0xFFFFFFFFFFFFFFLL to:[(CoreCECDeviceProvider *)self sendFromAddress], to];

  return [(CoreCECDeviceProvider *)self sendMessage:v7 error:error];
}

- (BOOL)menuStatus:(unsigned __int8)status to:(unsigned __int8)to error:(id *)error
{
  v7 = [CECMessage menuStatus:status from:[(CoreCECDeviceProvider *)self sendFromAddress] to:to];

  return [(CoreCECDeviceProvider *)self sendMessage:v7 error:error];
}

- (BOOL)userControlPressed:(CECUserControl)pressed to:(unsigned __int8)to error:(id *)error
{
  v7 = [CECMessage userControlPressed:pressed from:[(CoreCECDeviceProvider *)self sendFromAddress] to:to];

  return [(CoreCECDeviceProvider *)self sendMessage:v7 withRetryCount:5 error:error];
}

- (BOOL)userControlReleasedTo:(unsigned __int8)to error:(id *)error
{
  v6 = [CECMessage userControlReleasedFrom:[(CoreCECDeviceProvider *)self sendFromAddress] to:to];

  return [(CoreCECDeviceProvider *)self sendMessage:v6 withRetryCount:5 error:error];
}

- (BOOL)giveDevicePowerStatusTo:(unsigned __int8)to error:(id *)error
{
  v6 = [CECMessage giveDevicePowerStatusFrom:[(CoreCECDeviceProvider *)self sendFromAddress] to:to];

  return [(CoreCECDeviceProvider *)self sendMessage:v6 error:error];
}

- (BOOL)reportPowerStatus:(unsigned __int8)status to:(unsigned __int8)to error:(id *)error
{
  v7 = [CECMessage reportPowerStatus:status from:[(CoreCECDeviceProvider *)self sendFromAddress] to:to];

  return [(CoreCECDeviceProvider *)self sendMessage:v7 error:error];
}

- (BOOL)featureAbort:(unsigned __int8)abort reason:(unsigned __int8)reason to:(unsigned __int8)to error:(id *)error
{
  v8 = [CECMessage featureAbort:abort reason:reason from:[(CoreCECDeviceProvider *)self sendFromAddress] to:to];

  return [(CoreCECDeviceProvider *)self sendMessage:v8 error:error];
}

- (BOOL)abortTo:(unsigned __int8)to error:(id *)error
{
  v6 = [CECMessage abortFrom:[(CoreCECDeviceProvider *)self sendFromAddress] to:to];

  return [(CoreCECDeviceProvider *)self sendMessage:v6 error:error];
}

- (BOOL)giveAudioStatusTo:(unsigned __int8)to error:(id *)error
{
  v6 = [CECMessage giveAudioStatusFrom:[(CoreCECDevice *)self logicalAddress] to:to];

  return [(CoreCECDeviceProvider *)self sendMessage:v6 error:error];
}

- (BOOL)giveSystemAudioModeStatusTo:(unsigned __int8)to error:(id *)error
{
  v6 = [CECMessage giveSystemAudioModeStatusFrom:[(CoreCECDeviceProvider *)self sendFromAddress] to:to];

  return [(CoreCECDeviceProvider *)self sendMessage:v6 withRetryCount:5 error:error];
}

- (BOOL)systemAudioModeRequestWithPhysicalAddress:(unsigned __int16)address to:(unsigned __int8)to error:(id *)error
{
  v7 = [CECMessage systemAudioModeRequestWithPhysicalAddress:address from:[(CoreCECDeviceProvider *)self sendFromAddress] to:to];

  return [(CoreCECDeviceProvider *)self sendMessage:v7 error:error];
}

- (BOOL)reportAudioStatusTo:(unsigned __int8)to error:(id *)error
{
  v6 = [CECMessage reportAudioStatusWithVolume:[(CoreCECDevice *)self audioVolumeStatus] mute:[(CoreCECDevice *)self audioMuteStatus] from:[(CoreCECDeviceProvider *)self sendFromAddress] to:to];

  return [(CoreCECDeviceProvider *)self sendMessage:v6 error:error];
}

- (BOOL)reportShortAudioDescriptorTo:(unsigned __int8)to error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider reportShortAudioDescriptorTo:error:];
  }

  return 0;
}

- (BOOL)requestShortAudioDescriptor:(unsigned __int8)descriptor error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider requestShortAudioDescriptor:error:];
  }

  return 0;
}

- (BOOL)setSystemAudioMode:(unint64_t)mode to:(unsigned __int8)to error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider setSystemAudioMode:to:error:];
  }

  return 0;
}

- (BOOL)systemAudioModeStatus:(unsigned __int8)status error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider systemAudioModeStatus:error:];
  }

  return 0;
}

- (BOOL)initiateARC:(unsigned __int8)c error:(id *)error
{
  v6 = [CECMessage initiateARCFrom:[(CoreCECDeviceProvider *)self sendFromAddress] to:c];
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider initiateARC:error:];
  }

  return [(CoreCECDeviceProvider *)self sendMessage:v6 error:error];
}

- (BOOL)terminateARC:(unsigned __int8)c error:(id *)error
{
  v6 = [CECMessage terminateARCFrom:[(CoreCECDeviceProvider *)self sendFromAddress] to:c];
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider terminateARC:error:];
  }

  return [(CoreCECDeviceProvider *)self sendMessage:v6 error:error];
}

- (void)didRemoveFromBus:(id)bus
{
  v4.receiver = self;
  v4.super_class = CoreCECDeviceProvider;
  [(CoreRCDevice *)&v4 didRemoveFromBus:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [bus updateAllowHibernation];
  }
}

- (BOOL)deckControlSetDeckStatus:(unint64_t)status error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    v7 = objc_opt_class();
    v8 = CoreCECDeckInfoString(status);
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider deckControlSetDeckStatus:error:]", 10, "%@ %@ deckControlSetStatus: %@\n", v7, self, v8);
  }

  v12.receiver = self;
  v12.super_class = CoreCECDeviceProvider;
  v9 = [(CoreCECDevice *)&v12 deckControlSetDeckStatus:status error:error];
  if (v9)
  {
    [-[CoreRCDevice bus](self "bus")];
    if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider deckControlSetDeckStatus:error:]", 10, "Sending <Deck Status> notifications...\n");
    }

    for (i = 0; i != 15; ++i)
    {
      if ((self->_deckStatusRequestMask >> i))
      {
        -[CoreCECDeviceProvider sendDeckStatusToDevice:](self, "sendDeckStatusToDevice:", [-[CoreRCDevice bus](self "bus")]);
      }
    }
  }

  return v9;
}

- (BOOL)makeActiveSourceWithTVMenus:(BOOL)menus error:(id *)error
{
  menusCopy = menus;
  v10 = 0;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    objc_opt_class();
    OUTLINED_FUNCTION_5_2();
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider makeActiveSourceWithTVMenus:error:]", 10, "%@ %@ makeActiveSourceWithTVMenus: %s\n");
  }

  v7 = [(CoreCECDeviceProvider *)self oneTouchPlayWithMenu:menusCopy to:0 error:&v10];
  if (v7)
  {
    if (![(CoreCECDeviceProvider *)self menuStatus:0 to:0 error:&v10]&& gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider makeActiveSourceWithTVMenus:error:]", 90, "error sending <Menu Status> to TV (ignored): %@\n", v10);
    }

    [-[CoreCECDeviceProvider busProvider](self "busProvider")];
  }

  if (error)
  {
    v8 = v10;
    if (v7)
    {
      v8 = 0;
    }

    *error = v8;
  }

  return v7;
}

- (BOOL)sendHIDEvent:(id)event target:(id)target error:(id *)error
{
  v16 = 0;
  targetCopy = target;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    v9 = objc_opt_class();
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider sendHIDEvent:target:error:]", 10, "%@ %@ send EVENT <%@> To %@\n", v9, self, event, target);
  }

  if ([event isRepeat] || target && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v15 = 0, v14 = 0, v13 = 0, (objc_msgSend(event, "getCECUserControl:pressed:", &v14, &v13) & 1) == 0))
  {
    v16 = OUTLINED_FUNCTION_1_6(MEMORY[0x277CCA9B8], v10, *MEMORY[0x277CCA590]);
    goto LABEL_18;
  }

  if (![(CoreCECDeviceProvider *)self getRemoteControlDestination:&targetCopy logicalAddress:&v15 forTargetDevice:target command:v14 error:&v16])
  {
    goto LABEL_18;
  }

  if (v13 == 1)
  {
    [(CoreCECDeviceProvider *)self userControlCancelInitiatorTrackAudioStatusTimeout];
    [(CoreCECDeviceProvider *)self userControlScheduleInitiatorRepetitionTimeout];
    if (![(CoreCECDeviceProvider *)self userControlPressed:v14 to:v15 error:&v16])
    {
      [(CoreCECDeviceProvider *)self userControlCancelInitiatorRepetitionTimeout];
      goto LABEL_18;
    }

    self->_userControlInitiatorState.control = v14;
    self->_userControlInitiatorState.destination = v15;
    self->_userControlInitiatorState.isValid = 1;
  }

  else
  {
    if (!self->_userControlInitiatorState.isValid)
    {
      goto LABEL_18;
    }

    if (!CECUserControlEquals(*&self->_userControlInitiatorState.control, v14))
    {
      goto LABEL_18;
    }

    self->_userControlInitiatorState.isValid = 0;
    [(CoreCECDeviceProvider *)self userControlCancelInitiatorRepetitionTimeout];
    if (![(CoreCECDeviceProvider *)self userControlReleasedTo:self->_userControlInitiatorState.destination error:&v16])
    {
      goto LABEL_18;
    }
  }

  if ([(CoreCECDeviceProvider *)self trackAudioStatusEnabled])
  {
    [(CoreCECDeviceProvider *)self userControlScheduleInitiatorTrackAudioStatusTimeout];
  }

LABEL_18:
  v11 = v16;
  if (error)
  {
    *error = v16;
  }

  return v11 == 0;
}

- (BOOL)resignActiveSource:(id *)source
{
  OUTLINED_FUNCTION_18();
  v8 = 0;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    v5 = objc_opt_class();
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider resignActiveSource:]", 10, "%@ %@ resignActiveSource\n", v5);
  }

  if ([v4 sendActiveSourceStatus:0 error:&v8])
  {
    [objc_msgSend(v4 "busProvider")];
  }

  v6 = v8;
  if (v3)
  {
    *v3 = v8;
  }

  return v6 == 0;
}

- (BOOL)setAudioVolumeStatus:(unint64_t)status error:(id *)error
{
  v27 = 0;
  OUTLINED_FUNCTION_16();
  if (v9 ^ v10 | v8 && (v7 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider setAudioVolumeStatus:error:]", 40, "setAudioVolumeStatus: %lu  # %@\n", status, self);
  }

  if ([(CoreCECDevice *)self deviceType]!= 1)
  {
    if ([(CoreCECDevice *)self systemAudioControlEnabled])
    {
      if ([-[CoreCECDeviceProvider busProvider](self "busProvider")] == 2)
      {
        v12 = 5;
      }

      else
      {
        v12 = 0;
      }

      v13 = [-[CoreRCDevice bus](self "bus")];
      if (!v13)
      {
        if (gLogCategory_CoreRCDevice <= 90)
        {
          if (gLogCategory_CoreRCDevice == -1)
          {
            v11 = _LogCategory_Initialize();
            if (!v11)
            {
              goto LABEL_39;
            }
          }

          LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider setAudioVolumeStatus:error:]", 90, "no remote System Audio device\n", v24, v25);
        }

LABEL_50:
        LOBYTE(v11) = 0;
        goto LABEL_39;
      }

      v14 = v13;
      v15 = [v13 featureSupportStatus:20];
      if (v15)
      {
        if (v15 == 2)
        {
          OUTLINED_FUNCTION_16();
          if (v9 ^ v10 | v8 && (v16 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider setAudioVolumeStatus:error:]", 40, "Sending <Set Audio Volume Level>[%u] to remote System Audio device\n", status);
          }

          if ([-[CoreRCDevice bus](self "bus")])
          {
            [v14 setAudioVolumeStatus:status error:0];
            goto LABEL_33;
          }

          if (gLogCategory_CoreRCDevice <= 90)
          {
            if (gLogCategory_CoreRCDevice == -1)
            {
              v11 = _LogCategory_Initialize();
              if (!v11)
              {
                goto LABEL_39;
              }
            }

            LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider setAudioVolumeStatus:error:]", 90, "Error sending <Set Audio Volume Level>[%u] to remote System Audio device: error=%@\n", status, v27);
          }

          goto LABEL_50;
        }

        OUTLINED_FUNCTION_16();
        if (v9 ^ v10 | v8 && (v18 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider setAudioVolumeStatus:error:]", 40, "Remote System Audio device does not support <Set Audio Volume Level>\n");
        }
      }

      else
      {
        OUTLINED_FUNCTION_16();
        if (v9 ^ v10 | v8 && (v17 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider setAudioVolumeStatus:error:]", 40, "Remote System Audio device support for <Set Audio Volume Level> is unknown - skipping\n");
        }
      }

      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CCA590];
      v21 = -6735;
    }

    else
    {
      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CCA590];
      v21 = -6709;
    }

    v22 = [v19 errorWithDomain:v20 code:v21 userInfo:0];
    LOBYTE(v11) = 0;
    v27 = v22;
    goto LABEL_39;
  }

  if ([(CoreCECDevice *)self audioVolumeStatus]== status)
  {
LABEL_33:
    LOBYTE(v11) = 1;
    goto LABEL_39;
  }

  v26.receiver = self;
  v26.super_class = CoreCECDeviceProvider;
  v11 = [(CoreCECDevice *)&v26 setAudioVolumeStatus:status error:&v27];
  if (v11)
  {
    [(CoreCECDeviceProvider *)self audioStatusChanged];
    [-[CoreRCDevice bus](self "bus")];
    goto LABEL_33;
  }

LABEL_39:
  if (error && v27)
  {
    *error = v27;
  }

  return v11;
}

- (BOOL)setAudioMuteStatus:(BOOL)status error:(id *)error
{
  statusCopy = status;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    v7 = objc_opt_class();
    v8 = @"NO";
    if (statusCopy)
    {
      v8 = @"YES";
    }

    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider setAudioMuteStatus:error:]", 10, "%@ %@ setAudioMuteStatus: %@\n", v7, self, v8);
  }

  if ([(CoreCECDevice *)self audioMuteStatus]== statusCopy)
  {
    goto LABEL_10;
  }

  v11.receiver = self;
  v11.super_class = CoreCECDeviceProvider;
  v9 = [(CoreCECDevice *)&v11 setAudioMuteStatus:statusCopy error:error];
  if (v9)
  {
    [(CoreCECDeviceProvider *)self audioStatusChanged];
    [-[CoreRCDevice bus](self "bus")];
LABEL_10:
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (BOOL)setSupportedAudioFormats:(id)formats error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    v7 = objc_opt_class();
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider setSupportedAudioFormats:error:]", 10, "%@ %@ setSupportedAudioFormats:error: called\n", v7, self);
  }

  v10.receiver = self;
  v10.super_class = CoreCECDeviceProvider;
  v8 = [(CoreCECDevice *)&v10 setSupportedAudioFormats:formats error:error];
  if (v8)
  {
    [-[CoreRCDevice bus](self "bus")];
  }

  return v8;
}

- (void)receivedSetAudioVolumeLevel:(unsigned __int8)level fromDevice:(id)device
{
  levelCopy = level;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    v7 = objc_opt_class();
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider receivedSetAudioVolumeLevel:fromDevice:]", 10, "%@ SET AUDIO VOLUME LEVEL: %d HAS BEEN RECEIVED from %@  # self: %@\n", v7, levelCopy, device, self);
  }

  v8 = [[CoreRCHIDEvent alloc] initWithCECAudioVolumeLevel:levelCopy];
  if (v8)
  {
    v9 = v8;
    [(CoreRCDevice *)self receivedHIDEvent:v8 fromDevice:device];
    v8 = v9;
  }
}

- (id)filterSetMenuLanguageMessage:(id)message
{
  OUTLINED_FUNCTION_18();
  if ([v5 initiator])
  {
    return 0;
  }

  v8 = 0;
  v7 = 0;
  if ([v3 parseSetMenuLanguage:&v7])
  {
    [objc_msgSend(v4 "busProvider")];
  }

  else if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider filterSetMenuLanguageMessage:]", 60, "failed to parse: %@\n");
  }

  return v3;
}

- (id)filterReportFeaturesMessage:(id)message toDevice:(id)device
{
  OUTLINED_FUNCTION_18();
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v8 = 0;
  v9 = 0;
  if ([v4 parseReportFeatures:&v13 + 1 deviceTypes:&v13 rcProfile:&v11 features:&v10])
  {
    if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      v6 = CECVersionString(HIBYTE(v13));
      LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider filterReportFeaturesMessage:toDevice:]", 10, "ReportFeaturesMessage: verion=%s, SupportedMask=0x%02X, RcProfile.type=0x%02X, RcProfile.data=0x%02X, FeaturesMask=0x%02X\n", v6, v13, v11, HIBYTE(v11), v10);
    }

    [v5 setCecVersion:HIBYTE(v13)];
    if (CoreCECDeviceFeaturesMaskForCECDeviceFeaturesMask(&v9, v10))
    {
      [v5 setDeviceFeatures:v9];
      [v5 setKnownDeviceFeatures:{objc_msgSend(v5, "defaultKnownDeviceFeaturesMaskForCECVersion:", HIBYTE(v13))}];
      if (CoreCECDeviceTypesMaskForCECAllDeviceTypesMask(&v12, v13))
      {
        [v5 setAllDeviceTypes:v12];
        if (CoreCECRCProfileForCECRCProfile(&v8, &v11))
        {
          [v5 setRcProfile:v8];
          [objc_msgSend(v5 "bus")];
        }
      }
    }
  }

  else if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider filterReportFeaturesMessage:toDevice:]", 60, "failed to parse: %@\n");
  }

  return v4;
}

- (void)sendDeckStatusToDevice:(id)device
{
  v6 = 0;
  deckStatus = [(CoreCECDevice *)self deckStatus];
  if (device && deckStatus)
  {
    if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider sendDeckStatusToDevice:]", 10, "sending <Deck Status> to %@\n", device);
    }

    if (!-[CoreCECDeviceProvider deckStatusWithInfo:to:error:](self, "deckStatusWithInfo:to:error:", -[CoreCECDevice deckStatus](self, "deckStatus"), [device logicalAddress], &v6))
    {
      if (gLogCategory_CoreRCDevice <= 90)
      {
        if (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider sendDeckStatusToDevice:]", 90, "error sending <Deck Status> to %@: %@\n", device, v6);
        }

        if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider sendDeckStatusToDevice:]", 60, "terminating <Deck Status> to %@\n", device);
        }
      }

      self->_deckStatusRequestMask &= ~(1 << [device logicalAddress]);
    }
  }
}

- (void)sendFeatureAbort:(unsigned __int8)abort forMessage:(id)message
{
  abortCopy = abort;
  if (([message isBroadcast] & 1) == 0 && objc_msgSend(message, "messageType") != -1)
  {
    if ([message messageType])
    {
      if ([message initiator] != 15)
      {
        v7 = 0;
        if (!-[CoreCECDeviceProvider featureAbort:reason:to:error:](self, "featureAbort:reason:to:error:", [message messageType], abortCopy, objc_msgSend(message, "initiator"), &v7) && gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider sendFeatureAbort:forMessage:]", 60, "error sending <Feature Abort> for message %@: %@\n", message, v7);
        }
      }
    }
  }
}

- (uint64_t)willRemoveFromBus:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v2 = objc_opt_class();
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider willRemoveFromBus:]", 40, "%@ %@ Terminating Press and Hold Operation because device removed from bus: %@\n", v2, v1, v0);
}

- (uint64_t)serialQueue
{
  OUTLINED_FUNCTION_1_4();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];

  return [currentHandler handleFailureInMethod:v1 object:v0 file:@"CoreCECDeviceProvider.m" lineNumber:337 description:@"busProvider queue must not be nil!"];
}

- (void)didAddToBus:.cold.1()
{
  if (gLogCategory_CoreRCDevice <= 90)
  {
    OUTLINED_FUNCTION_1_4();
    if (v2 != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider didAddToBus:]", 90, "%@ setAllowHibernation:NO failed; error=%@\n", v0, *v1);
    }
  }
}

- (uint64_t)deckControlCommandWithMode:(uint64_t)a1 target:(uint64_t)a2 error:.cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_3(a1, a2);
  v5 = OUTLINED_FUNCTION_3_1();
  v6 = CoreCECDeckControlModeString(v5);
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider deckControlCommandWithMode:target:error:]", 10, "%@ %@ deckControlCommandWithMode: %@ to Device %@\n", v4, v3, v6, v2);
}

- (void)deckControlCommandWithMode:(void *)a1 target:(const char *)a2 error:.cold.3(void *a1, const char *a2)
{
  result = OUTLINED_FUNCTION_15(MEMORY[0x277CCA9B8], a2, *MEMORY[0x277CCA590]);
  *a1 = result;
  return result;
}

- (uint64_t)deckControlPlayWithMode:(uint64_t)a1 target:(uint64_t)a2 error:.cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_3(a1, a2);
  v5 = OUTLINED_FUNCTION_3_1();
  v6 = CoreCECPlayModeString(v5);
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider deckControlPlayWithMode:target:error:]", 10, "%@ %@ deckControlPlayWithMode: %@ to Device %@\n", v4, v3, v6, v2);
}

- (uint64_t)deckControlRefreshStatus:(uint64_t)a1 requestType:(uint64_t)a2 error:.cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_3(a1, a2);
  v5 = OUTLINED_FUNCTION_3_1();
  v6 = CoreCECStatusRequestTypeString(v5);
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider deckControlRefreshStatus:requestType:error:]", 10, "%@ %@ deckControlRefreshStatus: %@ to Device %@\n", v4, v3, v6, v2);
}

- (uint64_t)performStandbyWithTargetDevice:error:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v2 = objc_opt_class();
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider performStandbyWithTargetDevice:error:]", 10, "%@ %@ performStandbyWithTargetDevice: %@\n", v2, v1, v0);
}

- (uint64_t)setSystemAudioControlEnabled:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  objc_opt_class();
  OUTLINED_FUNCTION_5_2();
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider setSystemAudioControlEnabled:error:]", 10, "%@ %@ setSystemAudioControlEnabled: %s\n");
}

- (uint64_t)systemAudioModeRequest:error:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v2 = objc_opt_class();
  v3 = CoreCECSystemAudioModeStatusString(v0);
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider systemAudioModeRequest:error:]", 40, "%@ %@ systemAudioModeRequest:(deprecated) %@\n", v2, v1, v3);
}

- (void)systemAudioModeRequest:(void *)a1 error:(const char *)a2 .cold.2(void *a1, const char *a2)
{
  result = OUTLINED_FUNCTION_14(MEMORY[0x277CCA9B8], a2, *MEMORY[0x277CCA590]);
  *a1 = result;
  return result;
}

- (uint64_t)requestSystemAudioModeStatusChangeTo:error:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v2 = objc_opt_class();
  v3 = CoreCECActivationStatusString(v0);
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider requestSystemAudioModeStatusChangeTo:error:]", 10, "%@ %@ requestSystemAudioModeStatusChangeTo: %@\n", v2, v1, v3);
}

- (void)requestSystemAudioModeStatusChangeTo:(void *)a1 error:.cold.3(void *a1)
{
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:1 userInfo:0];
  *a1 = result;
  return result;
}

- (uint64_t)requestSystemAudioModeStatusChangeTo:(uint64_t)a1 error:(uint64_t)a2 .cold.4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_3(a1, a2);
  v5 = OUTLINED_FUNCTION_3_1();
  v6 = CoreCECActivationStatusString(v5);
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider requestSystemAudioModeStatusChangeTo:error:]", 40, "%@ %@ ## requestSystemAudioModeStatusChangeTo: %@ failed initially: error=%@\n", v4, v3, v6, *v2);
}

- (uint64_t)setAudioReturnChannelControlEnabled:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  objc_opt_class();
  OUTLINED_FUNCTION_5_2();
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider setAudioReturnChannelControlEnabled:error:]", 10, "%@ %@ setAudioReturnChannelControlEnabled: %s\n");
}

- (uint64_t)requestAudioReturnChannelStatusChangeTo:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  CoreCECActivationStatusString(a1);
  OUTLINED_FUNCTION_2_4();
  v4 = objc_opt_class();
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider requestAudioReturnChannelStatusChangeTo:error:]", 10, "requestAudioReturnChannelStatusChangeTo: %@  ## %@ %@\n", v2, v4, a2);
}

- (void)requestAudioReturnChannelStatusChangeTo:(uint64_t)a3 error:.cold.2(void *a1, const char *a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_14(MEMORY[0x277CCA9B8], a2, *MEMORY[0x277CCA590]);
  v7 = result;
  if (gLogCategory_CoreRCDevice <= 40)
  {
    if (gLogCategory_CoreRCDevice != -1 || (result = _LogCategory_Initialize(), result))
    {
      CoreCECActivationStatusString(a2);
      v8 = [OUTLINED_FUNCTION_3_1() localizedDescription];
      v9 = objc_opt_class();
      result = LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider requestAudioReturnChannelStatusChangeTo:error:]", 40, "requestAudioReturnChannelStatusChangeTo: %@ failed initially: error=%@  ## %@ %@\n", a2, v8, v9, a3);
    }
  }

  if (a1)
  {
    *a1 = v7;
  }

  return result;
}

- (uint64_t)requestAudioReturnChannelStatusChangeTo:(uint64_t)a1 error:(uint64_t)a2 .cold.3(uint64_t a1, uint64_t a2)
{
  CoreCECActivationStatusString(a1);
  OUTLINED_FUNCTION_2_4();
  v4 = objc_opt_class();
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider requestAudioReturnChannelStatusChangeTo:error:]", 40, "requestAudioReturnChannelStatusChangeTo: %@  ## %@ %@\n", v2, v4, a2);
}

- (uint64_t)setTrackAudioStatusEnabled:(uint64_t)a1 pressTimeout:pollInterval:error:.cold.1(uint64_t a1)
{
  objc_opt_class();
  OUTLINED_FUNCTION_5_2();
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider setTrackAudioStatusEnabled:pressTimeout:pollInterval:error:]", 10, "%@ %@ setTrackAudioStatusEnabled: %s\n");
}

- (uint64_t)setTrackAudioStatusEnabled:(char)a1 pressTimeout:pollInterval:error:.cold.2(char a1)
{
  v1 = "NO";
  if (a1)
  {
    v1 = "YES";
  }

  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider setTrackAudioStatusEnabled:pressTimeout:pollInterval:error:]", 40, "Setting track audio status enable=%s", v1);
}

- (uint64_t)getRemoteControlDestination:(void *)a1 logicalAddress:forTargetDevice:command:error:.cold.1(void *a1)
{
  if ([a1 systemAudioControlEnabled])
  {
    v2 = "YES";
  }

  else
  {
    v2 = "NO";
  }

  v3 = CoreCECSystemAudioModeStatusString([objc_msgSend(a1 "busProvider")]);
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider getRemoteControlDestination:logicalAddress:forTargetDevice:command:error:]", 10, "System Audio Control Enabled: %s; System Audio Mode: %@\n", v2, v3);
}

- (void)getRemoteControlDestination:logicalAddress:forTargetDevice:command:error:.cold.5()
{
  if (gLogCategory_CoreRCDevice <= 90)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider getRemoteControlDestination:logicalAddress:forTargetDevice:command:error:]", 90, "Failed to get remote control destination: %@\n", v0);
    }
  }
}

- (uint64_t)userControlFollowerSafetyTimeoutExpired
{
  v2 = objc_opt_class();
  v3 = CECUserControlString(*(self + 184));
  v4 = objc_opt_class();
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider userControlFollowerSafetyTimeoutExpired]", 60, "%@ %@ COMMAND %s SAFETY TIMER EXPIRED for %@ %@\n", v2, self, v3, v4, *(self + 176));
}

- (uint64_t)userControlFollowerSynthesizeRelease
{
  OUTLINED_FUNCTION_1_4();
  v2 = objc_opt_class();
  v3 = CECUserControlString(v0[1]);
  v4 = objc_opt_class();
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider userControlFollowerSynthesizeRelease]", 60, "%@ %@ COMMAND %s SYNTHESIZING RELEASE for %@ %@\n", v2, v1, v3, v4, *v0);
}

- (uint64_t)deviceRequestSystemAudioModeStatusChangeTo:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  CoreCECActivationStatusString(a1);
  OUTLINED_FUNCTION_2_4();
  v4 = objc_opt_class();
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider deviceRequestSystemAudioModeStatusChangeTo:error:]", 10, "deviceRequestSystemAudioModeStatusChangeTo: %@  ## %@ %@\n", v2, v4, a2);
}

- (uint64_t)deviceRequestSystemAudioModeStatusChangeTo:(void *)a3 error:.cold.2(uint64_t a1, void *a2, void *a3)
{
  v5 = CoreCECActivationStatusString(a1);
  if ([objc_msgSend(a2 "busProvider")] == a3)
  {
    v6 = @"- no state change";
  }

  else
  {
    v6 = &stru_285935118;
  }

  v7 = objc_opt_class();
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider deviceRequestSystemAudioModeStatusChangeTo:error:]", 40, "deviceRequestSystemAudioModeStatusChangeTo: %@ %@  ## %@ %@\n", v5, v6, v7, a2);
}

- (uint64_t)dsamStartingWithPhysicalAddress:.cold.2()
{
  OUTLINED_FUNCTION_8();
  if (gLogCategory_CoreRCDevice <= 90)
  {
    v3 = v2;
    if (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider dsamStartingWithPhysicalAddress:]", 90, "Error sending <System Audio Mode Request>[%04x] from non-Audio System device: error=%@\n", v3, *v1);
    }
  }

  [v0 samResetStateToOff];
  return [OUTLINED_FUNCTION_2_8() samInformDelegateTransitionTo:? failedWithError:?];
}

- (uint64_t)dsamStopping
{
  OUTLINED_FUNCTION_8();
  if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_11();
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider dsamStopping]", 90, "Error sending <System Audio Mode Request>[Off] from non-Audio System device: error=%@\n");
  }

  [v0 setSystemAudioModeState:7];
  return [OUTLINED_FUNCTION_10() samInformDelegateTransitionTo:? failedWithError:?];
}

- (uint64_t)audioSystemRequestSystemAudioModeStatusChangeTo:(void *)a3 error:.cold.1(uint64_t a1, void *a2, void *a3)
{
  v5 = CoreCECActivationStatusString(a1);
  if ([objc_msgSend(a2 "busProvider")] == a3)
  {
    v6 = @"- no state change";
  }

  else
  {
    v6 = &stru_285935118;
  }

  v7 = objc_opt_class();
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider audioSystemRequestSystemAudioModeStatusChangeTo:error:]", 40, "audioSystemReqSAMStatusChangeTo: %@ %@  ## %@ %@\n", v5, v6, v7, a2);
}

- (uint64_t)samStarting_broadcast_Req_Act_Src
{
  OUTLINED_FUNCTION_8();
  if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_11();
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider samStarting_broadcast_Req_Act_Src]", 60, "Error sending <Request Active Source>: error=%@\n");
  }

  [v0 samResetStateToOff];
  return [OUTLINED_FUNCTION_2_8() samInformDelegateTransitionTo:? failedWithError:?];
}

- (uint64_t)samStarting_send_SSAM_ON_to_TV
{
  OUTLINED_FUNCTION_8();
  if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_11();
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider samStarting_send_SSAM_ON_to_TV]", 60, "Error sending <Set System Audio Mode>[ON] to TV: error=%@\n");
  }

  [v0 samResetStateToOff];
  return [OUTLINED_FUNCTION_2_8() samInformDelegateTransitionTo:? failedWithError:?];
}

- (uint64_t)samStarting_broadcast_SSAM_ON
{
  if (self <= 90 && (self != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider samStarting_broadcast_SSAM_ON]", 90, "Failed to broadcast <Set System Audio Mode>[ON]\n");
  }

  [a2 samResetStateToOff];
  return [OUTLINED_FUNCTION_2_8() samInformDelegateTransitionTo:? failedWithError:?];
}

- (uint64_t)samStopping
{
  if (self <= 60 && (self != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider samStopping]", 60, "Error broadcasting <Set System Audio Mode>[OFF]\n");
  }

  [a2 setSystemAudioModeState:7];
  return [OUTLINED_FUNCTION_10() samInformDelegateTransitionTo:? failedWithError:?];
}

- (uint64_t)arcStarting
{
  OUTLINED_FUNCTION_1_4();
  if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_11();
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider arcStarting]", 60, "Error sending <Initiate ARC>: error=%@\n");
  }

  return [OUTLINED_FUNCTION_2_8() arcInformDelegateTransitionTo:? failedWithError:?];
}

- (uint64_t)arcStopping
{
  OUTLINED_FUNCTION_1_4();
  if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_11();
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider arcStopping]", 60, "Error sending <Terminate ARC>: error=%@\n");
  }

  return [OUTLINED_FUNCTION_10() arcInformDelegateTransitionTo:? failedWithError:?];
}

- (void)handleMessage:(uint64_t)a1 fromDevice:(uint64_t)a2 broadcast:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v6 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider handleMessage:fromDevice:broadcast:]", 60, "Warning: ignoring (spoofed?) message from sendFromAddress: self=%@ fromDevice=%@ message=%@\n", v3, a2, a3);
    }
  }
}

- (uint64_t)initiatorAddressErrorDetectedForMessage:(void *)a1 .cold.1(void *a1)
{
  CECMessageTypeString([a1 messageType]);
  v2 = [OUTLINED_FUNCTION_2_4() logicalAddress];
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider initiatorAddressErrorDetectedForMessage:]", 60, "Warning: LA conflict: received %s from remote CEC device with LA %d that matches a local CEC device! (ignored)\n", v1, v2);
}

- (void)handleFeatureAbortMessage:fromDevice:.cold.1()
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider handleFeatureAbortMessage:fromDevice:]", 60, "failed to parse: %@\n", v0);
    }
  }
}

- (void)filterActiveSourceMessage:.cold.1()
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider filterActiveSourceMessage:]", 60, "failed to parse: %@\n", v0);
    }
  }
}

- (void)filterInactiveSourceMessage:toDevice:.cold.1()
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider filterInactiveSourceMessage:toDevice:]", 60, "failed to parse: %@\n", v0);
    }
  }
}

- (uint64_t)filterSetStreamPathMessage:(uint64_t)result .cold.1(uint64_t result, void *a2)
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    v3 = result;
    if (gLogCategory_CoreRCDevice != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider filterSetStreamPathMessage:]", 60, "Ignoring <Set Stream Path> from non-root device: %@\n", v3);
    }
  }

  *a2 = 0;
  return result;
}

- (void)filterSetStreamPathMessage:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider filterSetStreamPathMessage:]", 60, "failed to parse: %@\n", v1);
  }

  *v0 = v1;
}

- (uint64_t)filterSetStreamPathMessage:(uint64_t)result .cold.3(uint64_t result, void *a2)
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    v3 = result;
    if (gLogCategory_CoreRCDevice != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider filterSetStreamPathMessage:]", 60, "Ignoring <Set Stream Path> with invalid PA: %@\n", v3);
    }
  }

  *a2 = 0;
  return result;
}

- (void)filterRoutingChangeMessage:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider filterRoutingChangeMessage:]", 60, "failed to parse: %@\n", v1);
  }

  *v0 = v1;
}

- (uint64_t)filterRoutingChangeMessage:(uint64_t)a3 .cold.2(uint64_t result, uint64_t *a2, uint64_t a3, void *a4)
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    v7 = result;
    if (gLogCategory_CoreRCDevice != -1 || (result = _LogCategory_Initialize(), result))
    {
      *a2 = CECPhysicalAddressStringWithAddress(v7);
      result = LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider filterRoutingChangeMessage:]", 60, "Ignored suspicious routing change %@, currentStreamPath=%s\n", a3, a2);
    }
  }

  *a4 = 0;
  return result;
}

- (void)filterRoutingChangeMessage:.cold.3()
{
  OUTLINED_FUNCTION_1_4();
  if (gLogCategory_CoreRCDevice <= 70 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider filterRoutingChangeMessage:]", 70, "%s: bus must never be nil when handling a message!\n", "[CoreCECDeviceProvider filterRoutingChangeMessage:]");
  }

  *v0 = v1;
}

- (void)filterRoutingInformationMessage:.cold.1()
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider filterRoutingInformationMessage:]", 60, "failed to parse: %@\n", v0);
    }
  }
}

- (void)filterSetOSDNameMessage:toDevice:.cold.1()
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider filterSetOSDNameMessage:toDevice:]", 60, "failed to parse: %@\n", v0);
    }
  }
}

- (void)filterDeviceVendorIDMessage:.cold.1()
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider filterDeviceVendorIDMessage:]", 60, "failed to parse: %@\n", v0);
    }
  }
}

- (void)filterCECVersionMessage:toDevice:.cold.1()
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider filterCECVersionMessage:toDevice:]", 60, "failed to parse: %@\n", v0);
    }
  }
}

- (void)filterReportPhysicalAddressMessage:.cold.1()
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider filterReportPhysicalAddressMessage:]", 60, "failed to parse: %@\n", v0);
    }
  }
}

- (void)filterReportPowerStatusMessage:toDevice:.cold.1()
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider filterReportPowerStatusMessage:toDevice:]", 60, "failed to parse: %@\n", v0);
    }
  }
}

- (void)filterDeckStatusMessage:toDevice:.cold.1()
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider filterDeckStatusMessage:toDevice:]", 60, "failed to parse: %@\n", v0);
    }
  }
}

- (uint64_t)handleUserControlPressedMessage:(uint64_t)a1 fromDevice:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_1_3(a1, a2);
  CECUserControlString(*v3);
  OUTLINED_FUNCTION_2_4();
  v6 = objc_opt_class();
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider handleUserControlPressedMessage:fromDevice:]", 10, "%@ %@ COMMAND %s PRESS AND HOLD by %@ %@\n", v5, v4, v3, v6, v2);
}

- (void)handleUserControlReleasedMessage:(uint64_t)a1 fromDevice:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v4 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider handleUserControlReleasedMessage:fromDevice:]", 60, "Unexpected <User Control Released> %@ from %@\n", v2, a2);
    }
  }
}

- (void)handleUserControlReleasedMessage:(uint64_t)a3 fromDevice:.cold.2(void *result, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    v5 = result;
    if (gLogCategory_CoreRCDevice != -1)
    {
      return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider handleUserControlReleasedMessage:fromDevice:]", 60, "Unexpected <User Control Released> %@ from %@; sender was %@\n", a2, a3, *v5);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider handleUserControlReleasedMessage:fromDevice:]", 60, "Unexpected <User Control Released> %@ from %@; sender was %@\n", a2, a3, *v5);
    }
  }

  return result;
}

- (uint64_t)handleUserControl:(char)a1 pressed:(uint64_t)a2 fromDevice:abortReason:.cold.1(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = "press";
  }

  else
  {
    v2 = "released";
  }

  v3 = CECUserControlString(a2);
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider handleUserControl:pressed:fromDevice:abortReason:]", 10, "%s %s\n", v2, v3);
}

- (_BYTE)handleUserControl:(char)a3 pressed:(uint64_t)a4 fromDevice:(_BYTE *)a5 abortReason:.cold.2(_BYTE *result, unsigned __int8 a2, char a3, uint64_t a4, _BYTE *a5)
{
  v9 = result;
  if (gLogCategory_CoreRCDevice <= 10)
  {
    if (gLogCategory_CoreRCDevice != -1 || (result = _LogCategory_Initialize(), result))
    {
      if (a3)
      {
        v10 = "press";
      }

      else
      {
        v10 = "released";
      }

      v11 = CECUserControlString(a4);
      v12 = CECAbortReasonString(a2);
      result = LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider handleUserControl:pressed:fromDevice:abortReason:]", 10, "%s %s error: %s\n", v10, v11, v12);
    }
  }

  if (v9)
  {
    *v9 = a2;
  }

  *a5 = 0;
  return result;
}

- (uint64_t)handleReportAudioStatusMessage:(uint64_t)result fromDevice:(uint64_t)a2 .cold.1(uint64_t result, uint64_t a2)
{
  if (result <= 60)
  {
    if (result != -1)
    {
      return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider handleReportAudioStatusMessage:fromDevice:]", 60, "failed to parse: %@\n", a2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider handleReportAudioStatusMessage:fromDevice:]", 60, "failed to parse: %@\n", a2);
    }
  }

  return result;
}

- (void)filterSetSystemAudioModeMessage:toDevice:.cold.2()
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider filterSetSystemAudioModeMessage:toDevice:]", 60, "failed to parse: %@\n", v0);
    }
  }
}

- (uint64_t)handleRequestShortAudioDescriptorMessage:(void *)a1 fromDevice:(void *)a2 .cold.2(void *a1, void *a2)
{
  if (a1)
  {
    objc_msgSend_frame(a1);
    v3 = a2[2] & 0x1F;
  }

  else
  {
    v3 = 0;
    *a2 = 0;
    a2[1] = 0;
    *(a2 + 4) = 0;
  }

  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider handleRequestShortAudioDescriptorMessage:fromDevice:]", 40, "Requested audio formats message length: %u\n", v3);
}

- (uint64_t)handleRequestShortAudioDescriptorMessage:fromDevice:.cold.3()
{
  OUTLINED_FUNCTION_18();
  objc_msgSend_frame(v2);
  return LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider handleRequestShortAudioDescriptorMessage:fromDevice:]", 40, "  blocks[%u] = 0x%02x\n", v0, *(v1 + v0));
}

- (void)filterSystemAudioModeStatusMessage:toDevice:.cold.2()
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_CoreRCDevice, "[CoreCECDeviceProvider filterSystemAudioModeStatusMessage:toDevice:]", 60, "failed to parse: %@\n", v0);
    }
  }
}

- (void)sendMessage:(void *)a1 withRetryCount:error:.cold.2(void *a1)
{
  result = [MEMORY[0x277CCA9B8] cecTopologyChangeError];
  *a1 = result;
  return result;
}

- (void)reportPhysicalAddress:(void *)result .cold.1(void *result, const char *a2)
{
  if (result)
  {
    v3 = result;
    result = OUTLINED_FUNCTION_1_6(MEMORY[0x277CCA9B8], a2, *MEMORY[0x277CCA590]);
    *v3 = result;
  }

  *a2 = 0;
  return result;
}

@end