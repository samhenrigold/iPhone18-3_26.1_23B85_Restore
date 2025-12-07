@interface SiriActivityAssertion
- (SiriActivityAssertion)initWithIdentifier:(id)identifier reference:(id)reference reason:(id)reason timestamp:(double)timestamp invalidationBlock:(id)block;
- (void)dealloc;
- (void)invalidate;
- (void)invalidatedAtTimestamp:(double)timestamp;
@end

@implementation SiriActivityAssertion

- (SiriActivityAssertion)initWithIdentifier:(id)identifier reference:(id)reference reason:(id)reason timestamp:(double)timestamp invalidationBlock:(id)block
{
  identifierCopy = identifier;
  referenceCopy = reference;
  reasonCopy = reason;
  blockCopy = block;
  v26.receiver = self;
  v26.super_class = SiriActivityAssertion;
  v16 = [(SiriActivityAssertion *)&v26 init];
  if (v16)
  {
    v17 = [identifierCopy copy];
    identifier = v16->_identifier;
    v16->_identifier = v17;

    v19 = [reasonCopy copy];
    reason = v16->_reason;
    v16->_reason = v19;

    v21 = [referenceCopy copy];
    reference = v16->_reference;
    v16->_reference = v21;

    v16->_timestamp = timestamp;
    v23 = [blockCopy copy];
    invalidationBlock = v16->_invalidationBlock;
    v16->_invalidationBlock = v23;
  }

  return v16;
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_invalidationBlock)
  {
    v3 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      identifier = self->_identifier;
      reason = self->_reason;
      *buf = 136315650;
      v8 = "[SiriActivityAssertion dealloc]";
      v9 = 2112;
      v10 = identifier;
      v11 = 2112;
      v12 = reason;
      _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s Deallocated SiriActivityAssertion (identifier=%@, reason=%@) before it was properly invalidated.", buf, 0x20u);
    }
  }

  v6.receiver = self;
  v6.super_class = SiriActivityAssertion;
  [(SiriActivityAssertion *)&v6 dealloc];
}

- (void)invalidate
{
  Current = CFAbsoluteTimeGetCurrent();

  [(SiriActivityAssertion *)self invalidatedAtTimestamp:Current];
}

- (void)invalidatedAtTimestamp:(double)timestamp
{
  invalidationBlock = self->_invalidationBlock;
  if (invalidationBlock)
  {
    v8 = _Block_copy(invalidationBlock);
    v6 = self->_invalidationBlock;
    self->_invalidationBlock = 0;

    v7 = SiriSystemUpTimeFromCFAbsoluteCurrentTime(timestamp);
    v8[2](v8, self, v7);
  }
}

@end