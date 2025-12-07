@interface NPKAssertionWrapper
- (BOOL)invalidateAssertionExpected:(BOOL)expected;
- (NPKAssertionWrapper)initWithAssertion:(id)assertion invalidator:(id)invalidator;
- (id)description;
- (void)dealloc;
@end

@implementation NPKAssertionWrapper

- (NPKAssertionWrapper)initWithAssertion:(id)assertion invalidator:(id)invalidator
{
  assertionCopy = assertion;
  invalidatorCopy = invalidator;
  v15.receiver = self;
  v15.super_class = NPKAssertionWrapper;
  v9 = [(NPKAssertionWrapper *)&v15 init];
  if (v9)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    wrapperUUID = v9->_wrapperUUID;
    v9->_wrapperUUID = uUID;

    objc_storeStrong(&v9->_assertion, assertion);
    v12 = _Block_copy(invalidatorCopy);
    assertionInvalidator = v9->_assertionInvalidator;
    v9->_assertionInvalidator = v12;
  }

  return v9;
}

- (void)dealloc
{
  [(NPKAssertionWrapper *)self invalidateAssertionExpected:0];
  v3.receiver = self;
  v3.super_class = NPKAssertionWrapper;
  [(NPKAssertionWrapper *)&v3 dealloc];
}

- (BOOL)invalidateAssertionExpected:(BOOL)expected
{
  v15 = *MEMORY[0x277D85DE8];
  assertion = self->_assertion;
  if (assertion)
  {
    if (!expected)
    {
      v5 = pk_General_log(self);
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

      if (v6)
      {
        v8 = pk_General_log(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = self->_assertion;
          v13 = 138412290;
          v14 = v9;
          _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Warning: Unexpected invalidation of assertion:%@", &v13, 0xCu);
        }
      }
    }

    (*(self->_assertionInvalidator + 2))();
    v10 = self->_assertion;
    self->_assertion = 0;

    assertionInvalidator = self->_assertionInvalidator;
    self->_assertionInvalidator = 0;
  }

  return assertion != 0;
}

- (id)description
{
  assertion = self->_assertion;
  if (assertion)
  {
    assertion = [MEMORY[0x277CCACA8] stringWithFormat:@", assertion:%@", assertion];
  }

  else
  {
    assertion = &stru_286C934F8;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@:%p> {UUID:%@%@}", objc_opt_class(), self, self->_wrapperUUID, assertion];

  return v5;
}

@end