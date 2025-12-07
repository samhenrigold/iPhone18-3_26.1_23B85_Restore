@interface CoreRCHIDEvent(CEC)
@end

@implementation CoreRCHIDEvent(CEC)

- (uint64_t)initWithCECUserControl:()CEC pressed:.cold.1(uint64_t a1)
{
  v1 = a1;
  v2 = CECUserControlString(a1);
  return LogPrintF(&gLogCategory_CoreRCHID, "[CoreRCHIDEvent(CEC) initWithCECUserControl:pressed:]", 60, "Error: unsupported CEC User Control: %s (%d)\n", v2, v1);
}

- (void)initWithCECDeckControlMode:()CEC pressed:.cold.1(void *a1, char a2)
{
  if (gLogCategory_CoreRCHID <= 60 && (gLogCategory_CoreRCHID != -1 || _LogCategory_Initialize()))
  {
    v4 = CECDeckControlModeString(a2);
    LogPrintF(&gLogCategory_CoreRCHID, "[CoreRCHIDEvent(CEC) initWithCECDeckControlMode:pressed:]", 60, "Error: unknown CEC Deck Control: %s (%d)\n", v4, a2);
  }
}

@end