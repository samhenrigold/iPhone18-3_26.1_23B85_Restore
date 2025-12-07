@interface SKUIJSTelephony
- (BOOL)isCellularRoaming;
- (NSString)countryCode;
- (NSString)mobileCountryCode;
- (NSString)mobileNetworkCode;
- (NSString)operatorName;
- (NSString)phoneNumber;
- (NSString)providerName;
- (SKUIJSTelephony)initWithAppContext:(id)context;
- (__CTServerConnection)_telephonyServer;
- (id)formattedPhoneNumber:(id)number;
- (void)beginObserving;
- (void)dealloc;
- (void)sendSMSWithBodyText:(id)text :(id)a4 :(id)a5;
@end

@implementation SKUIJSTelephony

- (SKUIJSTelephony)initWithAppContext:(id)context
{
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIJSTelephony initWithAppContext:];
  }

  v9.receiver = self;
  v9.super_class = SKUIJSTelephony;
  v5 = [(IKJSObject *)&v9 initWithAppContext:contextCopy];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.StoreKitUI.SKUIJSTelephony", 0);
    telephonyQueue = v5->_telephonyQueue;
    v5->_telephonyQueue = v6;
  }

  return v5;
}

- (void)dealloc
{
  v3 = SKUICoreTelephonyFramework(self, a2);
  if (self->_telephonyServer)
  {
    v4 = v3;
    v5 = SKUIWeakLinkedSymbolForString("_CTServerConnectionUnregisterForNotification", v3);
    if (v5)
    {
      v6 = v5;
      v7 = SKUIWeakLinkedSymbolForString("kCTRegistrationDisplayStatusChangedNotification", v4);
      v6(self->_telephonyServer, *v7);
      v8 = SKUIWeakLinkedSymbolForString("kCTRegistrationOperatorNameChangedNotification", v4);
      v6(self->_telephonyServer, *v8);
      v9 = SKUIWeakLinkedSymbolForString("kCTRegistrationStatusChangedNotification", v4);
      v6(self->_telephonyServer, *v9);
      v10 = SKUIWeakLinkedSymbolForString("kCTSettingPhoneNumberChangedNotification", v4);
      v6(self->_telephonyServer, *v10);
    }

    CFRelease(self->_telephonyServer);
  }

  v11.receiver = self;
  v11.super_class = SKUIJSTelephony;
  [(SKUIJSTelephony *)&v11 dealloc];
}

- (void)beginObserving
{
  if (!self->_isObserving)
  {
    _telephonyServer = [(SKUIJSTelephony *)self _telephonyServer];
    if (_telephonyServer)
    {
      v5 = _telephonyServer;
      v6 = SKUICoreTelephonyFramework(_telephonyServer, v4);
      v7 = SKUIWeakLinkedSymbolForString("_CTServerConnectionRegisterForNotification", v6);
      if (v7)
      {
        v8 = v7;
        v9 = SKUIWeakLinkedSymbolForString("kCTRegistrationDisplayStatusChangedNotification", v6);
        v8(v5, *v9);
        v10 = SKUIWeakLinkedSymbolForString("kCTRegistrationOperatorNameChangedNotification", v6);
        v8(v5, *v10);
        v11 = SKUIWeakLinkedSymbolForString("kCTRegistrationStatusChangedNotification", v6);
        v8(v5, *v11);
        v12 = SKUIWeakLinkedSymbolForString("kCTSettingPhoneNumberChangedNotification", v6);
        v8(v5, *v12);
      }

      self->_isObserving = 1;
    }
  }
}

- (NSString)countryCode
{
  active = CPPhoneNumberCopyActiveCountryCode();

  return active;
}

- (id)formattedPhoneNumber:(id)number
{
  v3 = CPPhoneNumberCopyFormattedStringForTextMessage();

  return v3;
}

- (BOOL)isCellularRoaming
{
  v2 = SKUICoreTelephonyFramework(self, a2);
  v3 = SKUIWeakLinkedSymbolForString("CTRegistrationCopyDataStatus", v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = SKUIWeakLinkedSymbolForString("kCTRegistrationStatus", v2);
  Value = CFDictionaryGetValue(v5, *v6);
  if (Value)
  {
    v8 = Value;
    v9 = SKUIWeakLinkedSymbolForString("kCTRegistrationStatusRegisteredRoaming", v2);
    v10 = CFEqual(v8, *v9) != 0;
  }

  else
  {
    v10 = 0;
  }

  CFRelease(v5);
  return v10;
}

- (NSString)mobileCountryCode
{
  v7 = 0;
  _telephonyServer = [(SKUIJSTelephony *)self _telephonyServer];
  if (_telephonyServer)
  {
    v4 = _telephonyServer;
    v5 = SKUICoreTelephonyFramework(_telephonyServer, v3);
    _telephonyServer = SKUIWeakLinkedSymbolForString("_CTServerConnectionCopyMobileCountryCode", v5);
    if (_telephonyServer)
    {
      (_telephonyServer)(v4, &v7);
      _telephonyServer = v7;
    }
  }

  return _telephonyServer;
}

- (NSString)mobileNetworkCode
{
  v7 = 0;
  _telephonyServer = [(SKUIJSTelephony *)self _telephonyServer];
  if (_telephonyServer)
  {
    v4 = _telephonyServer;
    v5 = SKUICoreTelephonyFramework(_telephonyServer, v3);
    _telephonyServer = SKUIWeakLinkedSymbolForString("_CTServerConnectionCopyMobileNetworkCode", v5);
    if (_telephonyServer)
    {
      (_telephonyServer)(v4, &v7);
      _telephonyServer = v7;
    }
  }

  return _telephonyServer;
}

- (NSString)operatorName
{
  mEMORY[0x277D7FD00] = [MEMORY[0x277D7FD00] sharedInstance];
  operatorName = [mEMORY[0x277D7FD00] operatorName];

  return operatorName;
}

- (NSString)phoneNumber
{
  mEMORY[0x277D7FD00] = [MEMORY[0x277D7FD00] sharedInstance];
  phoneNumber = [mEMORY[0x277D7FD00] phoneNumber];

  return phoneNumber;
}

- (NSString)providerName
{
  mEMORY[0x277D7FD00] = [MEMORY[0x277D7FD00] sharedInstance];
  providerName = [mEMORY[0x277D7FD00] providerName];

  return providerName;
}

- (void)sendSMSWithBodyText:(id)text :(id)a4 :(id)a5
{
  v7 = a5;
  v8 = a4;
  textCopy = text;
  v11 = SKUICoreTelephonyFramework(textCopy, v10);
  v12 = SKUIWeakLinkedClassForString(&cfstr_Ctmessagecente.isa, v11);
  v15 = [SKUIWeakLinkedClassForString(&cfstr_Ctphonenumber.isa v11)];

  sharedMessageCenter = [v12 sharedMessageCenter];
  canonicalFormat = [v15 canonicalFormat];
  [sharedMessageCenter sendSMSWithText:textCopy serviceCenter:0 toAddress:canonicalFormat];
}

- (__CTServerConnection)_telephonyServer
{
  if (!self->_telephonyServer)
  {
    v3 = SKUICoreTelephonyFramework(self, a2);
    v4 = SKUIWeakLinkedSymbolForString("_CTServerConnectionCreateWithIdentifier", v3);
    v5 = SKUIWeakLinkedSymbolForString("_CTServerConnectionSetTargetQueue", v3);
    if (v4)
    {
      v6 = v5;
      if (v5)
      {
        v8[0] = 0;
        v9 = 0u;
        v10 = 0;
        v8[1] = self;
        self->_telephonyServer = (v4)(0, @"com.apple.StoreKitUI.SKUIJSTelephony", _telephonyNotification, v8);
        v6();
      }
    }
  }

  return self->_telephonyServer;
}

- (void)initWithAppContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIJSTelephony initWithAppContext:]";
}

@end