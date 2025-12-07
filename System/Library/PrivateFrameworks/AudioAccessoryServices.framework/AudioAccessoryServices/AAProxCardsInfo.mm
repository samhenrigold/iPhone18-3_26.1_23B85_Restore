@interface AAProxCardsInfo
- (AAProxCardsInfo)initWithBluetoothAddress:(id)address;
- (AAProxCardsInfo)initWithCoder:(id)coder;
- (id)descriptionWithLevel:(int)level;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AAProxCardsInfo

- (AAProxCardsInfo)initWithBluetoothAddress:(id)address
{
  addressCopy = address;
  v5 = [(AAProxCardsInfo *)self init];
  if (v5)
  {
    uppercaseString = [addressCopy uppercaseString];
    bluetoothAddress = v5->_bluetoothAddress;
    v5->_bluetoothAddress = uppercaseString;

    v8 = v5;
  }

  return v5;
}

- (id)descriptionWithLevel:(int)level
{
  v59 = 0;
  v5 = [objc_opt_class() description];
  NSAppendPrintF_safe(&v59, "%@", v5);
  v6 = v59;

  bluetoothAddress = self->_bluetoothAddress;
  if (bluetoothAddress)
  {
    v58 = v6;
    v8 = bluetoothAddress;
    NSAppendPrintF_safe(&v58, ", Bt Addr %@", v8);
    v9 = v58;

    v6 = v9;
  }

  caseDoubleTapVersion = self->_caseDoubleTapVersion;
  if (caseDoubleTapVersion)
  {
    v57 = v6;
    NSAppendPrintF_safe(&v57, ", Cs DT %llu", caseDoubleTapVersion);
    v11 = v57;

    v6 = v11;
  }

  chargingRemindersVersion = self->_chargingRemindersVersion;
  if (chargingRemindersVersion)
  {
    v56 = v6;
    NSAppendPrintF_safe(&v56, ", Ch Rmd %llu", chargingRemindersVersion);
    v13 = v56;

    v6 = v13;
  }

  dynamicEndOfChargeNotificationVersion = self->_dynamicEndOfChargeNotificationVersion;
  if (dynamicEndOfChargeNotificationVersion)
  {
    v55 = v6;
    NSAppendPrintF_safe(&v55, ", DEOC N %llu", dynamicEndOfChargeNotificationVersion);
    v15 = v55;

    v6 = v15;
  }

  fitEducationNotificationsShownCount = self->_fitEducationNotificationsShownCount;
  if (fitEducationNotificationsShownCount)
  {
    v54 = v6;
    NSAppendPrintF_safe(&v54, ", Fit Ed N %llu", fitEducationNotificationsShownCount);
    v17 = v54;

    v6 = v17;
  }

  headGesturesVersion = self->_headGesturesVersion;
  if (headGesturesVersion)
  {
    v53 = v6;
    NSAppendPrintF_safe(&v53, ", HD Gst %llu", headGesturesVersion);
    v19 = v53;

    v6 = v19;
  }

  hearingAssistVersion = self->_hearingAssistVersion;
  if (hearingAssistVersion)
  {
    v52 = v6;
    NSAppendPrintF_safe(&v52, ", HR Ast %llu", hearingAssistVersion);
    v21 = v52;

    v6 = v21;
  }

  hearingTestVersion = self->_hearingTestVersion;
  if (hearingTestVersion)
  {
    v51 = v6;
    NSAppendPrintF_safe(&v51, ", HR Tst %llu", hearingTestVersion);
    v23 = v51;

    v6 = v23;
  }

  heartRateVersion = self->_heartRateVersion;
  if (heartRateVersion)
  {
    v50 = v6;
    NSAppendPrintF_safe(&v50, ", Hrt Rt %llu", heartRateVersion);
    v25 = v50;

    v6 = v25;
  }

  newChargingStatusVersion = self->_newChargingStatusVersion;
  if (newChargingStatusVersion)
  {
    v49 = v6;
    NSAppendPrintF_safe(&v49, ", Nw Ch %llu", newChargingStatusVersion);
    v27 = v49;

    v6 = v27;
  }

  pauseMediaOnSleepVersion = self->_pauseMediaOnSleepVersion;
  if (pauseMediaOnSleepVersion)
  {
    v48 = v6;
    NSAppendPrintF_safe(&v48, ", Pu Md %llu", pauseMediaOnSleepVersion);
    v29 = v48;

    v6 = v29;
  }

  personalTranslatorVersion = self->_personalTranslatorVersion;
  if (personalTranslatorVersion)
  {
    v47 = v6;
    NSAppendPrintF_safe(&v47, ", Ps Tr %llu", personalTranslatorVersion);
    v31 = v47;

    v6 = v31;
  }

  remoteCameraControlVersion = self->_remoteCameraControlVersion;
  if (remoteCameraControlVersion)
  {
    v46 = v6;
    NSAppendPrintF_safe(&v46, ", Rm CC %llu", remoteCameraControlVersion);
    v33 = v46;

    v6 = v33;
  }

  usbAudioVersion = self->_usbAudioVersion;
  if (usbAudioVersion)
  {
    v45 = v6;
    NSAppendPrintF_safe(&v45, ", USB Ad %llu", usbAudioVersion);
    v35 = v45;

    v6 = v35;
  }

  voiceQualityVersion = self->_voiceQualityVersion;
  if (voiceQualityVersion)
  {
    v44 = v6;
    NSAppendPrintF_safe(&v44, ", Vce Qlty %llu", voiceQualityVersion);
    v37 = v44;

    v6 = v37;
  }

  whatsNewVersion = self->_whatsNewVersion;
  if (whatsNewVersion)
  {
    v43 = v6;
    NSAppendPrintF_safe(&v43, ", Whats New %llu", whatsNewVersion);
    v39 = v43;

    v6 = v39;
  }

  if (level < 21)
  {
    v42 = v6;
    NSAppendPrintF_safe(&v42, "\n");
    v40 = v42;

    v6 = v40;
  }

  return v6;
}

- (AAProxCardsInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AAProxCardsInfo *)self init];
  if (v5)
  {
    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v6;
    if ([v7 containsValueForKey:@"caDT"])
    {
      v5->_caseDoubleTapVersion = [v7 decodeInt64ForKey:@"caDT"];
    }

    v8 = v7;
    if ([v8 containsValueForKey:@"chR"])
    {
      v5->_chargingRemindersVersion = [v8 decodeInt64ForKey:@"chR"];
    }

    v9 = v8;
    if ([v9 containsValueForKey:@"decN"])
    {
      v5->_dynamicEndOfChargeNotificationVersion = [v9 decodeInt64ForKey:@"decN"];
    }

    v10 = v9;
    if ([v10 containsValueForKey:@"fitEdN"])
    {
      v5->_fitEducationNotificationsShownCount = [v10 decodeInt64ForKey:@"fitEdN"];
    }

    v11 = v10;
    if ([v11 containsValueForKey:@"hGes"])
    {
      v5->_headGesturesVersion = [v11 decodeInt64ForKey:@"hGes"];
    }

    v12 = v11;
    if ([v12 containsValueForKey:@"hgAs"])
    {
      v5->_hearingAssistVersion = [v12 decodeInt64ForKey:@"hgAs"];
    }

    v13 = v12;
    if ([v13 containsValueForKey:@"hgTs"])
    {
      v5->_hearingTestVersion = [v13 decodeInt64ForKey:@"hgTs"];
    }

    v14 = v13;
    if ([v14 containsValueForKey:@"heRa"])
    {
      v5->_heartRateVersion = [v14 decodeInt64ForKey:@"heRa"];
    }

    v15 = v14;
    if ([v15 containsValueForKey:@"nCh"])
    {
      v5->_newChargingStatusVersion = [v15 decodeInt64ForKey:@"nCh"];
    }

    v16 = v15;
    if ([v16 containsValueForKey:@"pMOS"])
    {
      v5->_pauseMediaOnSleepVersion = [v16 decodeInt64ForKey:@"pMOS"];
    }

    v17 = v16;
    if ([v17 containsValueForKey:@"prT"])
    {
      v5->_personalTranslatorVersion = [v17 decodeInt64ForKey:@"prT"];
    }

    v18 = v17;
    if ([v18 containsValueForKey:@"rCC"])
    {
      v5->_remoteCameraControlVersion = [v18 decodeInt64ForKey:@"rCC"];
    }

    v19 = v18;
    if ([v19 containsValueForKey:@"usbA"])
    {
      v5->_usbAudioVersion = [v19 decodeInt64ForKey:@"usbA"];
    }

    v20 = v19;
    if ([v20 containsValueForKey:@"voQu"])
    {
      v5->_voiceQualityVersion = [v20 decodeInt64ForKey:@"voQu"];
    }

    v21 = v20;
    if ([v21 containsValueForKey:@"wNew"])
    {
      v5->_whatsNewVersion = [v21 decodeInt64ForKey:@"wNew"];
    }

    v22 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bluetoothAddress = self->_bluetoothAddress;
  v21 = coderCopy;
  if (bluetoothAddress)
  {
    [coderCopy encodeObject:bluetoothAddress forKey:@"btAd"];
    coderCopy = v21;
  }

  caseDoubleTapVersion = self->_caseDoubleTapVersion;
  if (caseDoubleTapVersion)
  {
    [v21 encodeInt64:caseDoubleTapVersion forKey:@"caDT"];
    coderCopy = v21;
  }

  chargingRemindersVersion = self->_chargingRemindersVersion;
  if (chargingRemindersVersion)
  {
    [v21 encodeInt64:chargingRemindersVersion forKey:@"chR"];
    coderCopy = v21;
  }

  dynamicEndOfChargeNotificationVersion = self->_dynamicEndOfChargeNotificationVersion;
  if (dynamicEndOfChargeNotificationVersion)
  {
    [v21 encodeInt64:dynamicEndOfChargeNotificationVersion forKey:@"decN"];
    coderCopy = v21;
  }

  fitEducationNotificationsShownCount = self->_fitEducationNotificationsShownCount;
  if (fitEducationNotificationsShownCount)
  {
    [v21 encodeInt64:fitEducationNotificationsShownCount forKey:@"fitEdN"];
    coderCopy = v21;
  }

  headGesturesVersion = self->_headGesturesVersion;
  if (headGesturesVersion)
  {
    [v21 encodeInt64:headGesturesVersion forKey:@"hGes"];
    coderCopy = v21;
  }

  hearingAssistVersion = self->_hearingAssistVersion;
  if (hearingAssistVersion)
  {
    [v21 encodeInt64:hearingAssistVersion forKey:@"hgAs"];
    coderCopy = v21;
  }

  hearingTestVersion = self->_hearingTestVersion;
  if (hearingTestVersion)
  {
    [v21 encodeInt64:hearingTestVersion forKey:@"hgTs"];
    coderCopy = v21;
  }

  heartRateVersion = self->_heartRateVersion;
  if (heartRateVersion)
  {
    [v21 encodeInt64:heartRateVersion forKey:@"heRa"];
    coderCopy = v21;
  }

  newChargingStatusVersion = self->_newChargingStatusVersion;
  if (newChargingStatusVersion)
  {
    [v21 encodeInt64:newChargingStatusVersion forKey:@"nCh"];
    coderCopy = v21;
  }

  pauseMediaOnSleepVersion = self->_pauseMediaOnSleepVersion;
  if (pauseMediaOnSleepVersion)
  {
    [v21 encodeInt64:pauseMediaOnSleepVersion forKey:@"pMOS"];
    coderCopy = v21;
  }

  personalTranslatorVersion = self->_personalTranslatorVersion;
  if (personalTranslatorVersion)
  {
    [v21 encodeInt64:personalTranslatorVersion forKey:@"prT"];
    coderCopy = v21;
  }

  remoteCameraControlVersion = self->_remoteCameraControlVersion;
  if (remoteCameraControlVersion)
  {
    [v21 encodeInt64:remoteCameraControlVersion forKey:@"rCC"];
    coderCopy = v21;
  }

  usbAudioVersion = self->_usbAudioVersion;
  if (usbAudioVersion)
  {
    [v21 encodeInt64:usbAudioVersion forKey:@"usbA"];
    coderCopy = v21;
  }

  voiceQualityVersion = self->_voiceQualityVersion;
  if (voiceQualityVersion)
  {
    [v21 encodeInt64:voiceQualityVersion forKey:@"voQu"];
    coderCopy = v21;
  }

  whatsNewVersion = self->_whatsNewVersion;
  if (whatsNewVersion)
  {
    [v21 encodeInt64:whatsNewVersion forKey:@"wNew"];
    coderCopy = v21;
  }
}

@end