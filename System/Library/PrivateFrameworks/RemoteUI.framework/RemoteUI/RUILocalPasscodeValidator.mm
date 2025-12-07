@interface RUILocalPasscodeValidator
- (BOOL)isCorrectPasscode:(id)passcode error:(id *)error;
- (RUILocalPasscodeConfiguration)configuration;
- (id)_readConfiguration;
@end

@implementation RUILocalPasscodeValidator

- (RUILocalPasscodeConfiguration)configuration
{
  configuration = self->_configuration;
  if (configuration)
  {
    _readConfiguration = configuration;
  }

  else
  {
    _readConfiguration = [(RUILocalPasscodeValidator *)self _readConfiguration];
  }

  v5 = self->_configuration;
  self->_configuration = _readConfiguration;

  v6 = self->_configuration;

  return v6;
}

- (id)_readConfiguration
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = 0;
  sharedConnection = [getMCProfileConnectionClass() sharedConnection];
  v3 = [sharedConnection unlockScreenTypeWithOutSimplePasscodeType:&v14];

  if (v3)
  {
    if (v3 == 1 || v3 == 2)
    {
      v6 = +[RUILocalPasscodeConfiguration alphanumeric];
      goto LABEL_17;
    }

    isInternalInstall = _isInternalInstall(v4, v5);
    if (!isInternalInstall)
    {
      goto LABEL_15;
    }

    v8 = _RUILoggingFacility(isInternalInstall);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 67109120;
    v16 = v3;
    v9 = "Error! Unexpected unlock type: %d";
    goto LABEL_13;
  }

  if (v14 == 1)
  {
    v11 = [RUILocalPasscodeConfiguration alloc];
    v12 = 6;
    goto LABEL_16;
  }

  if (v14)
  {
    v7 = _isInternalInstall(v4, v5);
    if (v7)
    {
      v8 = _RUILoggingFacility(v7);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:

        goto LABEL_15;
      }

      *buf = 67109120;
      v16 = v14;
      v9 = "Error! Unlock type is MCUnlockScreenSimple, but value for MCSimplePasscodeType (%d) is invalid.";
LABEL_13:
      _os_log_impl(&dword_21B93D000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 8u);
      goto LABEL_14;
    }
  }

LABEL_15:
  v11 = [RUILocalPasscodeConfiguration alloc];
  v12 = 4;
LABEL_16:
  v6 = [(RUILocalPasscodeConfiguration *)v11 initWithNumberOfDigits:v12];
LABEL_17:

  return v6;
}

- (BOOL)isCorrectPasscode:(id)passcode error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  passcodeCopy = passcode;
  sharedConnection = [getMCProfileConnectionClass() sharedConnection];
  v15 = 0;
  v7 = [sharedConnection unlockDeviceWithPasscode:passcodeCopy outError:&v15];

  v8 = v15;
  if (v8)
  {
    isInternalInstall = _isInternalInstall(v9, v10);
    if (isInternalInstall)
    {
      v12 = _RUILoggingFacility(isInternalInstall);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v8;
        _os_log_impl(&dword_21B93D000, v12, OS_LOG_TYPE_DEFAULT, "Error! Entered passcode does not validate: %@", buf, 0xCu);
      }
    }
  }

  if (error)
  {
    v13 = v8;
    *error = v8;
  }

  return v7;
}

@end