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
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10009CD58();
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
  descriptionCopy = description;
  dsCopy = ds;
  v12 = [[RBSTerminateContext alloc] initWithExplanation:descriptionCopy];

  [v12 setMaximumTerminationResistance:resistanceCopy];
  v13 = [RBSProcessPredicate predicateMatchingBundleIdentifiers:dsCopy];

  v14 = [[RBSTerminationAssertion alloc] initWithPredicate:v13 context:v12];
  v15 = v14;
  if (v14)
  {
    [v14 addObserver:self];
    v16 = 0;
  }

  else
  {
    v17 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10009CDD8();
    }

    v19 = sub_1000405FC("[IXTerminationAssertion _terminationAssertionForBundleIDs:description:terminationResistance:error:]", 52, @"IXErrorDomain", 0x13uLL, 0, 0, @"Failed to create termination assertion for predicate %@", v18, v13);
    v16 = v19;
    if (error)
    {
      v20 = v19;
      *error = v16;
    }
  }

  return v15;
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
    v20 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10009CE60(v20);
    }

    v15 = sub_1000405FC("[IXTerminationAssertion initForBundleIDs:description:terminationResistance:error:]", 76, @"IXErrorDomain", 1uLL, 0, 0, @"%s failed in init", v21, "[IXTerminationAssertion initForBundleIDs:description:terminationResistance:error:]");
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
    v9 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10009CEFC(self, v7, v9);
    }

    termAssertion2 = [(IXTerminationAssertion *)self termAssertion];
    v12 = sub_1000405FC("[IXTerminationAssertion acquireAssertion:]", 94, @"IXErrorDomain", 0x13uLL, v7, 0, @"Failed to acquire termination assertion %@", v11, termAssertion2);

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
  v4 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10009CFB0();
  }

  termAssertion = [(IXTerminationAssertion *)self termAssertion];

  if (termAssertion)
  {
    waitForAssertionSemaphore = [(IXTerminationAssertion *)self waitForAssertionSemaphore];
    dispatch_semaphore_signal(waitForAssertionSemaphore);
  }

  else
  {
    waitForAssertionSemaphore = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(waitForAssertionSemaphore, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[IXTerminationAssertion assertionTargetProcessDidExit:]";
      _os_log_impl(&_mh_execute_header, waitForAssertionSemaphore, OS_LOG_TYPE_DEFAULT, "%s: We didn't have a termination assertion that we're tracking, so not acting on the callback from RBS", &v7, 0xCu);
    }
  }
}

@end