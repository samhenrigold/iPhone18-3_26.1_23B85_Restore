@interface CDPDLocalDeviceSecretProxyImpl
- (BOOL)hasLocalSecret;
- (void)hasLocalSecret;
@end

@implementation CDPDLocalDeviceSecretProxyImpl

- (BOOL)hasLocalSecret
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isPasscodeSet = [mEMORY[0x277D262A0] isPasscodeSet];
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(CDPDLocalDeviceSecretProxyImpl *)mEMORY[0x277D262A0] hasLocalSecret];
  }

  return isPasscodeSet;
}

- (void)hasLocalSecret
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  selfCopy = self;
  v5 = 1024;
  v6 = a2 & 1;
  _os_log_debug_impl(&dword_24510B000, log, OS_LOG_TYPE_DEBUG, "Managed config (%@) reports isPasscodeSet=%i", &v3, 0x12u);
}

@end