@interface RMSPowerAssertion
- (RMSPowerAssertion)initWithName:(id)name;
- (void)dealloc;
@end

@implementation RMSPowerAssertion

- (RMSPowerAssertion)initWithName:(id)name
{
  v14[4] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = RMSPowerAssertion;
  v5 = [(RMSPowerAssertion *)&v10 init];
  if (v5)
  {
    v13[0] = @"AssertName";
    v13[1] = @"TimeoutSeconds";
    v14[0] = nameCopy;
    v14[1] = &unk_287486D68;
    v13[2] = @"TimeoutAction";
    v13[3] = @"AssertType";
    v14[2] = @"TimeoutActionTurnOff";
    v14[3] = @"PreventUserIdleSystemSleep";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];
    v7 = IOPMAssertionCreateWithProperties(v6, &v5->_assertionID);
    v8 = RMSLogger(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = nameCopy;
      _os_log_impl(&dword_261E98000, v8, OS_LOG_TYPE_DEFAULT, "Power assertion created for %@", buf, 0xCu);
    }
  }

  return v5;
}

- (void)dealloc
{
  IOPMAssertionRelease(self->_assertionID);
  self->_assertionID = 0;
  v3.receiver = self;
  v3.super_class = RMSPowerAssertion;
  [(RMSPowerAssertion *)&v3 dealloc];
}

@end