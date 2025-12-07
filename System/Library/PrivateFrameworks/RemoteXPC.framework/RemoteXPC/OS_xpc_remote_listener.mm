@interface OS_xpc_remote_listener
- (void)dealloc;
@end

@implementation OS_xpc_remote_listener

- (void)dealloc
{
  *self = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v6 = MEMORY[0x277D86220];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = 134217984;
  v9 = a3;
  _os_log_send_and_compose_impl(v7, self, a2, 80, &dword_23039D000, v6, 16, "assertion failure: canceled -> %llu", &v8);
  _os_crash_msg();
  __break(1u);
}

@end