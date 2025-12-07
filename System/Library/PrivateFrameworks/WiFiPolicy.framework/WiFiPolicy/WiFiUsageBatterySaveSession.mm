@interface WiFiUsageBatterySaveSession
- (WiFiUsageBatterySaveSession)initWithInterfaceName:(id)name andCapabilities:(id)capabilities;
- (void)updateWowState:(BOOL)state lpasState:(BOOL)lpasState lowPowerState:(BOOL)powerState batterySaverState:(BOOL)saverState;
@end

@implementation WiFiUsageBatterySaveSession

- (WiFiUsageBatterySaveSession)initWithInterfaceName:(id)name andCapabilities:(id)capabilities
{
  v5.receiver = self;
  v5.super_class = WiFiUsageBatterySaveSession;
  result = [(WiFiUsageSession *)&v5 initWithSessionType:7 andInterfaceName:name andCapabilities:capabilities];
  result->_batterySaveMode = 0;
  return result;
}

- (void)updateWowState:(BOOL)state lpasState:(BOOL)lpasState lowPowerState:(BOOL)powerState batterySaverState:(BOOL)saverState
{
  saverStateCopy = saverState;
  powerStateCopy = powerState;
  lpasStateCopy = lpasState;
  stateCopy = state;
  v14 = *MEMORY[0x277D85DE8];
  if (saverState)
  {
    if (!self->_batterySaveMode)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v13 = "[WiFiUsageBatterySaveSession updateWowState:lpasState:lowPowerState:batterySaverState:]";
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Battery save mode session started", buf, 0xCu);
      }

      [(WiFiUsageSession *)self sessionDidStart];
      self->_batterySaveMode = 1;
    }
  }

  else if (self->_batterySaveMode)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[WiFiUsageBatterySaveSession updateWowState:lpasState:lowPowerState:batterySaverState:]";
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Battery save session ended", buf, 0xCu);
    }

    self->_batterySaveMode = 0;
    [(WiFiUsageSession *)self sessionDidEnd];
  }

  v11.receiver = self;
  v11.super_class = WiFiUsageBatterySaveSession;
  [(WiFiUsageSession *)&v11 updateWowState:stateCopy lpasState:lpasStateCopy lowPowerState:powerStateCopy batterySaverState:saverStateCopy];
}

@end