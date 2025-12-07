@interface IXTerminationAssertion
- (BOOL)acquireAssertion:(id *)assertion;
- (id)_terminationAssertionForBundleIDs:(id)ds description:(id)description terminationResistance:(unsigned __int8)resistance error:(id *)error;
- (id)initForBundleIDs:(id)ds description:(id)description terminationResistance:(unsigned __int8)resistance error:(id *)error;
- (void)assertionTargetProcessDidExit:(id)exit;
- (void)dealloc;
- (void)setTermAssertion:(id)assertion;
@end

@implementation IXTerminationAssertion

- (void)setTermAssertion:(id)assertion
{
  assertionCopy = assertion;
  termAssertion = self->_termAssertion;
  if (assertionCopy && termAssertion == assertionCopy)
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [IXTerminationAssertion setTermAssertion:];
    }
  }

  else
  {
    if (termAssertion)
    {
      [(RBSTerminationAssertion *)termAssertion invalidate];
    }

    objc_storeStrong(&self->_termAssertion, assertion);
  }
}

- (id)_terminationAssertionForBundleIDs:(id)ds description:(id)description terminationResistance:(unsigned __int8)resistance error:(id *)error
{
  resistanceCopy = resistance;
  v10 = MEMORY[0x1E69C7650];
  descriptionCopy = description;
  dsCopy = ds;
  v13 = [[v10 alloc] initWithExplanation:descriptionCopy];

  [v13 setMaximumTerminationResistance:resistanceCopy];
  v14 = [MEMORY[0x1E69C7610] predicateMatchingBundleIdentifiers:dsCopy];

  v15 = [objc_alloc(MEMORY[0x1E69C7668]) initWithPredicate:v14 context:v13];
  v16 = v15;
  if (v15)
  {
    [v15 addObserver:self];
    v17 = 0;
  }

  else
  {
    v18 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [IXTerminationAssertion _terminationAssertionForBundleIDs:description:terminationResistance:error:];
    }

    v20 = _CreateError("[IXTerminationAssertion _terminationAssertionForBundleIDs:description:terminationResistance:error:]", 52, @"IXErrorDomain", 0x13uLL, 0, 0, @"Failed to create termination assertion for predicate %@", v19, v14);
    v17 = v20;
    if (error)
    {
      v21 = v20;
      *error = v17;
    }
  }

  return v16;
}

- (id)initForBundleIDs:(id)ds description:(id)description terminationResistance:(unsigned __int8)resistance error:(id *)error
{
  resistanceCopy = resistance;
  dsCopy = ds;
  descriptionCopy = description;
  v25.receiver = self;
  v25.super_class = IXTerminationAssertion;
  v12 = [(IXTerminationAssertion *)&v25 init];
  v13 = v12;
  if (v12)
  {
    v24 = 0;
    v14 = [(IXTerminationAssertion *)v12 _terminationAssertionForBundleIDs:dsCopy description:descriptionCopy terminationResistance:resistanceCopy error:&v24];
    v15 = v24;
    termAssertion = v13->_termAssertion;
    v13->_termAssertion = v14;

    if (v13->_termAssertion)
    {
      v17 = dispatch_semaphore_create(0);
      waitForAssertionSemaphore = v13->_waitForAssertionSemaphore;
      v13->_waitForAssertionSemaphore = v17;

      if (v13->_termAssertion)
      {
        v19 = v13;
        goto LABEL_11;
      }
    }
  }

  else
  {
    v20 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [IXTerminationAssertion initForBundleIDs:v20 description:? terminationResistance:? error:?];
    }

    v15 = _CreateError("[IXTerminationAssertion initForBundleIDs:description:terminationResistance:error:]", 76, @"IXErrorDomain", 1uLL, 0, 0, @"%s failed in init", v21, "[IXTerminationAssertion initForBundleIDs:description:terminationResistance:error:]");
  }

  if (error)
  {
    v22 = v15;
    v19 = 0;
    *error = v15;
  }

  else
  {
    v19 = 0;
  }

LABEL_11:

  return v19;
}

- (BOOL)acquireAssertion:(id *)assertion
{
  termAssertion = [(IXTerminationAssertion *)self termAssertion];
  v15 = 0;
  v6 = [termAssertion acquireWithError:&v15];
  v7 = v15;

  if (v6)
  {
    waitForAssertionSemaphore = [(IXTerminationAssertion *)self waitForAssertionSemaphore];
    dispatch_semaphore_wait(waitForAssertionSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v9 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(IXTerminationAssertion *)self acquireAssertion:v7, v9];
    }

    termAssertion2 = [(IXTerminationAssertion *)self termAssertion];
    v12 = _CreateError("[IXTerminationAssertion acquireAssertion:]", 94, @"IXErrorDomain", 0x13uLL, v7, 0, @"Failed to acquire termination assertion %@", v11, termAssertion2);

    if (assertion)
    {
      v13 = v12;
      *assertion = v12;
    }

    v7 = v12;
  }

  return v6;
}

- (void)dealloc
{
  [(IXTerminationAssertion *)self setTermAssertion:0];
  v3.receiver = self;
  v3.super_class = IXTerminationAssertion;
  [(IXTerminationAssertion *)&v3 dealloc];
}

- (void)assertionTargetProcessDidExit:(id)exit
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [IXTerminationAssertion assertionTargetProcessDidExit:];
  }

  termAssertion = [(IXTerminationAssertion *)self termAssertion];

  if (termAssertion)
  {
    waitForAssertionSemaphore = [(IXTerminationAssertion *)self waitForAssertionSemaphore];
    dispatch_semaphore_signal(waitForAssertionSemaphore);
  }

  else
  {
    waitForAssertionSemaphore = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(waitForAssertionSemaphore, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[IXTerminationAssertion assertionTargetProcessDidExit:]";
      _os_log_impl(&dword_1DA47A000, waitForAssertionSemaphore, OS_LOG_TYPE_DEFAULT, "%s: We didn't have a termination assertion that we're tracking, so not acting on the callback from RBS", &v7, 0xCu);
    }
  }
}

- (void)setTermAssertion:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(&dword_1DA47A000, v0, OS_LOG_TYPE_FAULT, "%s: Attempting to set the same termination assertion for %@", v1, 0x16u);
}

- (void)_terminationAssertionForBundleIDs:description:terminationResistance:error:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 136315650;
  OUTLINED_FUNCTION_0_1();
  v3 = v0;
  v4 = 0;
  _os_log_error_impl(&dword_1DA47A000, v1, OS_LOG_TYPE_ERROR, "%s: Failed to create termination assertion for predicate %@ : %@", v2, 0x20u);
}

- (void)initForBundleIDs:(os_log_t)log description:terminationResistance:error:.cold.1(os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = 136315650;
  v2 = "[IXTerminationAssertion initForBundleIDs:description:terminationResistance:error:]";
  v3 = 2080;
  v4 = "[IXTerminationAssertion initForBundleIDs:description:terminationResistance:error:]";
  v5 = 2112;
  v6 = 0;
  _os_log_error_impl(&dword_1DA47A000, log, OS_LOG_TYPE_ERROR, "%s: %s failed in init : %@", &v1, 0x20u);
}

- (void)acquireAssertion:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 termAssertion];
  v7[0] = 136315650;
  OUTLINED_FUNCTION_0_1();
  v8 = v6;
  v9 = a2;
  _os_log_error_impl(&dword_1DA47A000, a3, OS_LOG_TYPE_ERROR, "%s: Failed to acquire termination assertion %@ : %@", v7, 0x20u);
}

- (void)assertionTargetProcessDidExit:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_1DA47A000, v0, OS_LOG_TYPE_DEBUG, "%s: RBS termination assertion observer called for %@", v1, 0x16u);
}

@end