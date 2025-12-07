@interface MDMAbstractTunnelParser(Commands)
@end

@implementation MDMAbstractTunnelParser(Commands)

- (void)_commandDisconnect:()Commands .cold.1(os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = "/Library/Caches/com.apple.xbs/Sources/DeviceManagementClientTools/DeviceManagementClientTools/MDM Framework/Parsers/MDMAbstractTunnelParser.m";
  v3 = 2080;
  v1 = 136315650;
  v4 = "[MDMAbstractTunnelParser(Commands) _commandDisconnect:]";
  v5 = 2048;
  v6 = 43;
  _os_log_debug_impl(&dword_2561F5000, log, OS_LOG_TYPE_DEBUG, "<%s %s:%lu>", &v1, 0x20u);
}

@end