@interface SKStepWiFiPreflight
- (BOOL)checkWiFiAndReturnError:(id *)error;
- (SKSetupBase)skSetupObject;
- (SKStepWiFiPreflight)init;
- (void)activate;
- (void)dealloc;
- (void)setLabel:(id)label;
@end

@implementation SKStepWiFiPreflight

- (SKSetupBase)skSetupObject
{
  WeakRetained = objc_loadWeakRetained(&self->_skSetupObject);

  return WeakRetained;
}

- (BOOL)checkWiFiAndReturnError:(id *)error
{
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[SKStepWiFiPreflight checkWiFiAndReturnError:]", 30, "Preflight WiFi start");
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  v6 = [(CUEnvironment *)self->_environment objectForKeyedSubscript:@"_wifiInfo"];
  CFDictionaryGetTypeID();
  v7 = CFGetTypedObject();

  if (!v7)
  {
    v7 = WiFiCopyCurrentNetworkInfoEx();
  }

  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if (!v8)
  {
    if (!error)
    {
      goto LABEL_30;
    }

    NSErrorF_safe(*MEMORY[0x277CCA590], 301000, "No WiFi SSID");
LABEL_29:
    *error = v12 = 0;
    goto LABEL_19;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (CFDictionaryGetInt64())
  {
    if (Int64Ranged != 1)
    {
      v10 = NSPrintF("Not shareable (%d)", Int64Ranged);
      if (v10)
      {
        v14 = v10;
        if (error)
        {
          *error = NSErrorF_safe(*MEMORY[0x277CCA590], 301034, "Enterprise WiFi not supported: %@", v10);
        }

        goto LABEL_30;
      }
    }
  }

  if (Int64Ranged >= 2)
  {
    if (!error)
    {
      goto LABEL_30;
    }

    NSErrorF_safe(*MEMORY[0x277CCA590], 301004, "WiFi network not shareable (%d)");
    goto LABEL_29;
  }

  if (self->_preventAppleWiFi && [v8 isEqual:@"AppleWiFi"])
  {
    if (error)
    {
      NSErrorF_safe(*MEMORY[0x277CCA590], 301020, "AppleWiFi not allowed");
      goto LABEL_29;
    }

LABEL_30:
    v12 = 0;
    goto LABEL_19;
  }

  v11 = self->_ucat;
  if (v11->var0 <= 30)
  {
    if (v11->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }

      v11 = self->_ucat;
    }

    LogPrintF(v11, "[SKStepWiFiPreflight checkWiFiAndReturnError:]", 30, "Preflight WiFi succeeded");
  }

LABEL_18:
  v12 = 1;
LABEL_19:

  return v12;
}

- (void)activate
{
  v3 = MEMORY[0x26676A4C0](self->_skCompletionHandler, a2);
  if (v3)
  {
    v4 = v3;
    v11 = 0;
    [(SKStepWiFiPreflight *)self checkWiFiAndReturnError:&v11];
    v5 = v11;
    v6 = MEMORY[0x26676A4C0](self->_skCompletionHandler);
    v7 = v6;
    if (v6)
    {
      (*(v6 + 16))(v6, v5);
    }
  }

  else
  {
    v8 = CUFatalErrorF();
    [(SKStepWiFiPreflight *)v8 setLabel:v9, v10];
  }
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  uTF8String = [labelCopy UTF8String];

  LogCategoryReplaceF(&self->_ucat, "%s", uTF8String);
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = SKStepWiFiPreflight;
  [(SKStepWiFiPreflight *)&v4 dealloc];
}

- (SKStepWiFiPreflight)init
{
  v6.receiver = self;
  v6.super_class = SKStepWiFiPreflight;
  v2 = [(SKStepWiFiPreflight *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v3->_preventAppleWiFi = 1;
    v3->_ucat = &gLogCategory_SKStepWiFiPreflight;
    v4 = v3;
  }

  return v3;
}

@end