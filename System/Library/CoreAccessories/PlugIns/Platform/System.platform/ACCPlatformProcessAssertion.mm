@interface ACCPlatformProcessAssertion
- (ACCPlatformProcessAssertion)initWithBundleIdentifier:(id)identifier processAssertionName:(id)name rbsAttributes:(id)attributes pid:(int)pid;
- (void)dealloc;
@end

@implementation ACCPlatformProcessAssertion

- (ACCPlatformProcessAssertion)initWithBundleIdentifier:(id)identifier processAssertionName:(id)name rbsAttributes:(id)attributes pid:(int)pid
{
  v6 = *&pid;
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v11 = MEMORY[0x277D47008];
  attributesCopy = attributes;
  nameCopy = name;
  v14 = [v11 targetWithPid:v6];
  v28.receiver = self;
  v28.super_class = ACCPlatformProcessAssertion;
  v15 = [(ACCPlatformProcessAssertion *)&v28 initWithExplanation:nameCopy target:v14 attributes:attributesCopy];

  v27 = 0;
  v16 = [v15 acquireWithError:&v27];
  v17 = v27;
  if (gLogObjects)
  {
    v18 = gNumLogObjects <= 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = !v18;
  if (v16)
  {
    if (v19)
    {
      v20 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCPlatformProcessAssertion initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:];
      }

      v20 = MEMORY[0x277D86220];
      v22 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v30 = v15;
      v31 = 2112;
      v32 = identifierCopy;
      _os_log_impl(&dword_233648000, v20, OS_LOG_TYPE_DEFAULT, "Acquired EA application assertion: %@ for: %@", buf, 0x16u);
    }

    *(v15 + 8) = time(0);
    v23 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    v24 = *(v15 + 9);
    *(v15 + 9) = v23;

    dispatch_source_set_event_handler(*(v15 + 9), &__block_literal_global);
    dispatch_source_set_timer(*(v15 + 9), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(*(v15 + 9));
  }

  else
  {
    if (v19)
    {
      v21 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCPlatformProcessAssertion initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:];
      }

      v21 = MEMORY[0x277D86220];
      v25 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [ACCPlatformProcessAssertion initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:];
    }

    v15 = 0;
  }

  return v15;
}

- (void)dealloc
{
  [(ACCPlatformProcessAssertion *)self setStartTime:0];
  [(ACCPlatformProcessAssertion *)self invalidate];
  processAssertionTimer = [(ACCPlatformProcessAssertion *)self processAssertionTimer];
  dispatch_source_cancel(processAssertionTimer);

  [(ACCPlatformProcessAssertion *)self setProcessAssertionTimer:0];
  v4.receiver = self;
  v4.super_class = ACCPlatformProcessAssertion;
  [(ACCPlatformProcessAssertion *)&v4 dealloc];
}

- (void)initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end