@interface FSClient(Private)
@end

@implementation FSClient(Private)

- (void)validateVolumeName:()Private usingBundle:volumeID:replyHandler:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)validateVolumeName:()Private usingBundle:volumeID:replyHandler:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)startFSCKWithDevice:()Private volumes:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  v1 = *(*v0 + 40);
  v4 = 136315650;
  v5 = "[FSClient(Private) startFSCKWithDevice:volumes:error:]";
  v6 = 2112;
  v7 = v2;
  v8 = 2112;
  v9 = v1;
  _os_log_debug_impl(&dword_24A929000, v3, OS_LOG_TYPE_DEBUG, "%s: returning taskID (%@) error (%@)", &v4, 0x20u);
}

- (void)doneFSCKWithTask:()Private .cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  v2 = 136315394;
  v3 = "[FSClient(Private) doneFSCKWithTask:]";
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_24A929000, v1, OS_LOG_TYPE_DEBUG, "%s: returning error (%@)", &v2, 0x16u);
}

@end