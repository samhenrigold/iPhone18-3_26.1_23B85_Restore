@interface SRSourceDevice
- (void)setActiveHRMDevice:(id)device;
- (void)setHijackedByPhoneCall:(BOOL)call;
- (void)setIncomingCallRingtone:(BOOL)ringtone;
- (void)setIsSystemEligibleForSiriHijack:(BOOL)hijack;
- (void)setShouldStayOnVirtual:(BOOL)virtual;
- (void)updateHijackBlockingClientWithBundleID:(id)d mode:(BOOL)mode;
@end

@implementation SRSourceDevice

- (void)setActiveHRMDevice:(id)device
{
  deviceCopy = device;
  activeHRMDevice = self->_activeHRMDevice;
  p_activeHRMDevice = &self->_activeHRMDevice;
  btAddress = [(SRDiscoveredDevice *)activeHRMDevice btAddress];
  btAddress2 = [deviceCopy btAddress];
  v8 = btAddress;
  v9 = btAddress2;
  v10 = v9;
  if (v8 == v9)
  {

LABEL_11:
    goto LABEL_12;
  }

  if ((v8 != 0) == (v9 == 0))
  {

LABEL_7:
    if (dword_1002F6270 <= 30 && (dword_1002F6270 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D4BA0(p_activeHRMDevice, deviceCopy);
    }

    v12 = deviceCopy;
    v8 = *p_activeHRMDevice;
    *p_activeHRMDevice = v12;
    goto LABEL_11;
  }

  v11 = [(SRDiscoveredDevice *)v8 isEqual:v9];

  if ((v11 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_12:
}

- (void)setHijackedByPhoneCall:(BOOL)call
{
  hijackedByPhoneCall = self->_hijackedByPhoneCall;
  if (hijackedByPhoneCall != call)
  {
    callCopy = call;
    if (dword_1002F6270 <= 30)
    {
      if (dword_1002F6270 != -1)
      {
LABEL_4:
        v6 = "no";
        if (hijackedByPhoneCall)
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

        LogPrintF(&dword_1002F6270, "[SRSourceDevice setHijackedByPhoneCall:]", 30, "Setting hijacked by phone %s -> %s", v7, v6);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(hijackedByPhoneCall) = self->_hijackedByPhoneCall;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_hijackedByPhoneCall = callCopy;
  }
}

- (void)setIncomingCallRingtone:(BOOL)ringtone
{
  incomingCallRingtone = self->_incomingCallRingtone;
  if (incomingCallRingtone != ringtone)
  {
    ringtoneCopy = ringtone;
    if (dword_1002F6270 <= 30)
    {
      if (dword_1002F6270 != -1)
      {
LABEL_4:
        v6 = "no";
        if (incomingCallRingtone)
        {
          v7 = "yes";
        }

        else
        {
          v7 = "no";
        }

        if (ringtoneCopy)
        {
          v6 = "yes";
        }

        LogPrintF(&dword_1002F6270, "[SRSourceDevice setIncomingCallRingtone:]", 30, "Setting incoming call ringtone state %s -> %s", v7, v6);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(incomingCallRingtone) = self->_incomingCallRingtone;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_incomingCallRingtone = ringtoneCopy;
  }
}

- (void)setIsSystemEligibleForSiriHijack:(BOOL)hijack
{
  isSystemEligibleForSiriHijack = self->_isSystemEligibleForSiriHijack;
  if (isSystemEligibleForSiriHijack != hijack)
  {
    hijackCopy = hijack;
    if (dword_1002F6270 <= 30)
    {
      if (dword_1002F6270 != -1)
      {
LABEL_4:
        v6 = "no";
        if (isSystemEligibleForSiriHijack)
        {
          v7 = "yes";
        }

        else
        {
          v7 = "no";
        }

        if (hijackCopy)
        {
          v6 = "yes";
        }

        LogPrintF(&dword_1002F6270, "[SRSourceDevice setIsSystemEligibleForSiriHijack:]", 30, "Setting system eligibility for Siri Hijack %s -> %s", v7, v6);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(isSystemEligibleForSiriHijack) = self->_isSystemEligibleForSiriHijack;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_isSystemEligibleForSiriHijack = hijackCopy;
  }
}

- (void)setShouldStayOnVirtual:(BOOL)virtual
{
  shouldStayOnVirtual = self->_shouldStayOnVirtual;
  if (shouldStayOnVirtual != virtual)
  {
    virtualCopy = virtual;
    if (dword_1002F6270 <= 30)
    {
      if (dword_1002F6270 != -1)
      {
LABEL_4:
        v6 = "no";
        if (shouldStayOnVirtual)
        {
          v7 = "yes";
        }

        else
        {
          v7 = "no";
        }

        if (virtualCopy)
        {
          v6 = "yes";
        }

        LogPrintF(&dword_1002F6270, "[SRSourceDevice setShouldStayOnVirtual:]", 30, "Setting shouldStayOnVirtual %s -> %s", v7, v6);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(shouldStayOnVirtual) = self->_shouldStayOnVirtual;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_shouldStayOnVirtual = virtualCopy;
  }
}

- (void)updateHijackBlockingClientWithBundleID:(id)d mode:(BOOL)mode
{
  modeCopy = mode;
  dCopy = d;
  hijackBlockingClientSet = self->_hijackBlockingClientSet;
  v12 = dCopy;
  if (modeCopy)
  {
    if (!hijackBlockingClientSet)
    {
      v8 = objc_alloc_init(NSMutableSet);
      v9 = self->_hijackBlockingClientSet;
      self->_hijackBlockingClientSet = v8;

      dCopy = v12;
      hijackBlockingClientSet = self->_hijackBlockingClientSet;
    }

    [(NSMutableSet *)hijackBlockingClientSet addObject:dCopy];
  }

  else
  {
    [(NSMutableSet *)hijackBlockingClientSet removeObject:dCopy];
    if (![(NSMutableSet *)self->_hijackBlockingClientSet count])
    {
      v10 = self->_hijackBlockingClientSet;
      self->_hijackBlockingClientSet = 0;
    }
  }

  if (dword_1002F6270 <= 30 && (dword_1002F6270 != -1 || _LogCategory_Initialize()))
  {
    v11 = @"Removed";
    if (modeCopy)
    {
      v11 = @"Added";
    }

    LogPrintF(&dword_1002F6270, "[SRSourceDevice updateHijackBlockingClientWithBundleID:mode:]", 30, "%@ Hijackblocking client %@ clients %@", v11, v12, self->_hijackBlockingClientSet);
  }
}

@end