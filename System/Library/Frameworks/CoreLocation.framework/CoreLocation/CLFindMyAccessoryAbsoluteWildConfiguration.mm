@interface CLFindMyAccessoryAbsoluteWildConfiguration
- (CLFindMyAccessoryAbsoluteWildConfiguration)initWithCoder:(id)coder;
- (CLFindMyAccessoryAbsoluteWildConfiguration)initWithDesiredNextKeyRollDate:(id)date nextWildIndex:(unsigned int)index;
- (id)encodeConfiguration;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLFindMyAccessoryAbsoluteWildConfiguration

- (CLFindMyAccessoryAbsoluteWildConfiguration)initWithDesiredNextKeyRollDate:(id)date nextWildIndex:(unsigned int)index
{
  v11.receiver = self;
  v11.super_class = CLFindMyAccessoryAbsoluteWildConfiguration;
  v9 = [(CLFindMyAccessoryAbsoluteWildConfiguration *)&v11 init];
  if (v9)
  {
    v9->_desiredKeyRollDate = objc_msgSend_copy(date, v6, v7, v8);
    v9->_nextWildIndex = index;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLFindMyAccessoryAbsoluteWildConfiguration;
  [(CLFindMyAccessoryAbsoluteWildConfiguration *)&v3 dealloc];
}

- (id)encodeConfiguration
{
  desiredKeyRollDate = self->_desiredKeyRollDate;
  v6 = objc_msgSend_date(MEMORY[0x1E695DF00], a2, v2, v3);
  objc_msgSend_timeIntervalSinceDate_(desiredKeyRollDate, v7, v6, v8);
  nextWildIndex = self->_nextWildIndex;
  v13[0] = (v9 * 1000.0);
  v13[1] = nextWildIndex;
  return objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v11, v13, 8);
}

- (CLFindMyAccessoryAbsoluteWildConfiguration)initWithCoder:(id)coder
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"kCLFindMyAccessoryWildConfigurationRollDate");
  v10 = objc_msgSend_decodeIntForKey_(coder, v8, @"kCLFindMyAccessoryWildConfigurationNextWildKeyIndex", v9);

  return MEMORY[0x1EEE66B58](self, sel_initWithDesiredNextKeyRollDate_nextWildIndex_, v7, v10);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_desiredKeyRollDate, @"kCLFindMyAccessoryWildConfigurationRollDate");
  nextWildIndex = self->_nextWildIndex;

  objc_msgSend_encodeInt_forKey_(coder, v5, nextWildIndex, @"kCLFindMyAccessoryWildConfigurationNextWildKeyIndex");
}

@end