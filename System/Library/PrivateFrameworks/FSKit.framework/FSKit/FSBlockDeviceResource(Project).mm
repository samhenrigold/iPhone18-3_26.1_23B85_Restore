@interface FSBlockDeviceResource(Project)
@end

@implementation FSBlockDeviceResource(Project)

+ (void)openWithBSDName:()Project writable:auditToken:replyHandler:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)openWithBSDName:()Project writable:auditToken:replyHandler:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)openWithBSDName:()Project writable:auditToken:replyHandler:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

+ (void)openWithBSDName:()Project writable:auditToken:replyHandler:.cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "+[FSBlockDeviceResource(Project) openWithBSDName:writable:auditToken:replyHandler:]";
  OUTLINED_FUNCTION_3_0(&dword_24A929000, a1, a3, "%s: Added IOKit notification callback sucessfully", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)openWithBSDName:()Project writable:auditToken:replyHandler:.cold.5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)openWithBSDName:()Project writable:auditToken:replyHandler:.cold.7(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "+[FSBlockDeviceResource(Project) openWithBSDName:writable:auditToken:replyHandler:]";
  OUTLINED_FUNCTION_3_0(&dword_24A929000, a1, a3, "%s:end", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)startUsingResource:()Project .cold.1()
{
  OUTLINED_FUNCTION_9_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)startUsingResource:()Project .cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)startUsingResource:()Project .cold.4(void *a1)
{
  v1 = [a1 getResourceID];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)stopUsingResource:()Project .cold.1()
{
  OUTLINED_FUNCTION_9_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)stopUsingResource:()Project .cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)stopUsingResource:()Project .cold.4(void *a1)
{
  v1 = [a1 getResourceID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)stopUsingResource:()Project .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FSBlockDeviceResource(Project) stopUsingResource:]";
  OUTLINED_FUNCTION_3_0(&dword_24A929000, a1, a3, "%s: we didn't start using the resource, so no need to stop using it", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end