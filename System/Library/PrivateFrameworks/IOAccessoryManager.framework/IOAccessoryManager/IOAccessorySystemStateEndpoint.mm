@interface IOAccessorySystemStateEndpoint
- (IOAccessorySystemStateEndpoint)initWithService:(unsigned int)service;
- (void)dealloc;
- (void)notifyBootComplete;
- (void)notifyUserActive:(BOOL)active;
- (void)notifyUserPresent:(BOOL)present;
@end

@implementation IOAccessorySystemStateEndpoint

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    IOServiceClose(connection);
    self->_connection = 0;
  }

  service = self->_service;
  if (service)
  {
    IOObjectRelease(service);
    self->_service = 0;
  }

  v5.receiver = self;
  v5.super_class = IOAccessorySystemStateEndpoint;
  [(IOAccessorySystemStateEndpoint *)&v5 dealloc];
}

- (void)notifyBootComplete
{
  mach_error_string(self);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)notifyUserActive:(BOOL)active
{
  input = active;
  v3 = IOConnectCallMethod(self->_connection, 1u, &input, 1u, 0, 0, 0, 0, 0, 0);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [IOAccessorySystemStateEndpoint notifyUserActive:v4];
    }
  }
}

- (void)notifyUserPresent:(BOOL)present
{
  input = present;
  v3 = IOConnectCallMethod(self->_connection, 2u, &input, 1u, 0, 0, 0, 0, 0, 0);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [IOAccessorySystemStateEndpoint notifyUserPresent:v4];
    }
  }
}

- (IOAccessorySystemStateEndpoint)initWithService:(unsigned int)service
{
  v16 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = IOAccessorySystemStateEndpoint;
  v4 = [(IOAccessorySystemStateEndpoint *)&v11 init];
  v5 = v4;
  v6 = 0;
  if (service && v4)
  {
    v4->_service = service;
    IOObjectRetain(service);
    v7 = IOServiceOpen(service, *MEMORY[0x277D85F48], 0, v5 + 3);
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v10 = mach_error_string(v8);
        *buf = 136315394;
        v13 = "[IOAccessorySystemStateEndpoint initWithService:]";
        v14 = 2080;
        v15 = v10;
        _os_log_error_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s unable to open service (%s)", buf, 0x16u);
      }

      v6 = 0;
    }

    else
    {
      v6 = v5;
    }
  }

  return v6;
}

- (void)notifyUserActive:(mach_error_t)a1 .cold.1(mach_error_t a1)
{
  mach_error_string(a1);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)notifyUserPresent:(mach_error_t)a1 .cold.1(mach_error_t a1)
{
  mach_error_string(a1);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

@end