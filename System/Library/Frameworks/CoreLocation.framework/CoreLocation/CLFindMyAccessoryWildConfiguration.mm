@interface CLFindMyAccessoryWildConfiguration
- (CLFindMyAccessoryWildConfiguration)initWithCoder:(id)coder;
- (CLFindMyAccessoryWildConfiguration)initWithDesiredNextKeyRollDate:(id)date keyRollInterval:(unsigned int)interval keysRemainingInWildPeriod:(unsigned __int16)period wildPeriodKeyCount:(unsigned __int16)count;
- (id)encodeConfiguration;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLFindMyAccessoryWildConfiguration

- (CLFindMyAccessoryWildConfiguration)initWithDesiredNextKeyRollDate:(id)date keyRollInterval:(unsigned int)interval keysRemainingInWildPeriod:(unsigned __int16)period wildPeriodKeyCount:(unsigned __int16)count
{
  v15.receiver = self;
  v15.super_class = CLFindMyAccessoryWildConfiguration;
  v13 = [(CLFindMyAccessoryWildConfiguration *)&v15 init];
  if (v13)
  {
    v13->_desiredKeyRollDate = objc_msgSend_copy(date, v10, v11, v12);
    v13->_keyRollInterval = interval;
    v13->_keysRemaining = period;
    v13->_keyCount = count;
  }

  return v13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLFindMyAccessoryWildConfiguration;
  [(CLFindMyAccessoryWildConfiguration *)&v3 dealloc];
}

- (id)encodeConfiguration
{
  desiredKeyRollDate = self->_desiredKeyRollDate;
  v6 = objc_msgSend_date(MEMORY[0x1E695DF00], a2, v2, v3);
  objc_msgSend_timeIntervalSinceDate_(desiredKeyRollDate, v7, v6, v8);
  if (v10 <= 0.0)
  {
    LODWORD(v11) = self->_keyRollInterval;
    v10 = v10 + v11;
    keysRemaining = self->_keysRemaining;
    v14 = keysRemaining != 0;
    v12 = keysRemaining - 1;
    if (v12 == 0 || !v14)
    {
      LOWORD(v12) = self->_keyCount;
    }

    self->_keysRemaining = v12;
  }

  else
  {
    LOWORD(v12) = self->_keysRemaining;
  }

  v16 = (v10 * 1000.0);
  v17 = v12;
  keyCount = self->_keyCount;
  return objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v9, &v16, 8);
}

- (CLFindMyAccessoryWildConfiguration)initWithCoder:(id)coder
{
  v14.receiver = self;
  v14.super_class = CLFindMyAccessoryWildConfiguration;
  v4 = [(CLFindMyAccessoryWildConfiguration *)&v14 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_desiredKeyRollDate = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"kCLFindMyAccessoryWildConfigurationRollDate");
    v4->_keyRollInterval = objc_msgSend_decodeIntForKey_(coder, v7, @"kCLFindMyAccessoryWildConfigurationKeyRollInterval", v8);
    v4->_keysRemaining = objc_msgSend_decodeIntForKey_(coder, v9, @"kCLFindMyAccessoryWildConfigurationKeysRemaining", v10);
    v4->_keyCount = objc_msgSend_decodeIntForKey_(coder, v11, @"kCLFindMyAccessoryWildConfigurationKeyCount", v12);
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInt_forKey_(coder, a2, self->_keyCount, @"kCLFindMyAccessoryWildConfigurationKeyCount");
  objc_msgSend_encodeInt_forKey_(coder, v5, self->_keysRemaining, @"kCLFindMyAccessoryWildConfigurationKeysRemaining");
  objc_msgSend_encodeInt_forKey_(coder, v6, self->_keyRollInterval, @"kCLFindMyAccessoryWildConfigurationKeyRollInterval");
  desiredKeyRollDate = self->_desiredKeyRollDate;

  objc_msgSend_encodeObject_forKey_(coder, v7, desiredKeyRollDate, @"kCLFindMyAccessoryWildConfigurationRollDate");
}

@end