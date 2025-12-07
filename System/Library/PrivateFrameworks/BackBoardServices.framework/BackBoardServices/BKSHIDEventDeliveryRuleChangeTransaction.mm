@interface BKSHIDEventDeliveryRuleChangeTransaction
- (BKSHIDEventDeliveryRuleChangeTransaction)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
- (void)setBufferingPredicates:(id)predicates;
- (void)setConstraintAssertions:(id)assertions;
- (void)setDiscreteDispatchingRules:(id)rules;
- (void)setKeyCommandDispatchingRules:(id)rules;
- (void)setKeyCommandsRegistrations:(id)registrations;
- (void)setModalityAssertions:(id)assertions;
- (void)setSelectionRequests:(id)requests;
@end

@implementation BKSHIDEventDeliveryRuleChangeTransaction

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6 = MEMORY[0x1E69E9820];
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendBodySectionWithName:v6 block:{3221225472, __70__BKSHIDEventDeliveryRuleChangeTransaction_appendDescriptionToStream___block_invoke, &unk_1E6F47C78}];
}

void __70__BKSHIDEventDeliveryRuleChangeTransaction_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendUInt64:? withName:? format:?];
  v3 = *(a1 + 40);
  if (v3[2])
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E698E690] collectionLineBreakNoneStyle];
    v33 = MEMORY[0x1E69E9820];
    v34 = 3221225472;
    v35 = __70__BKSHIDEventDeliveryRuleChangeTransaction_appendDescriptionToStream___block_invoke_2;
    v36 = &unk_1E6F47C78;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v37 = v6;
    v38 = v7;
    [v4 overlayStyle:? block:?];

    v3 = *(a1 + 40);
  }

  if (v3[3])
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x1E698E690] collectionLineBreakNoneStyle];
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __70__BKSHIDEventDeliveryRuleChangeTransaction_appendDescriptionToStream___block_invoke_4;
    v30 = &unk_1E6F47C78;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v31 = v10;
    v32 = v11;
    [v8 overlayStyle:? block:?];

    v3 = *(a1 + 40);
  }

  if (v3[4])
  {
    v12 = [*(a1 + 32) appendObject:? withName:?];
    v3 = *(a1 + 40);
  }

  if (v3[5])
  {
    v13 = *(a1 + 32);
    v14 = [MEMORY[0x1E698E690] collectionLineBreakNoneStyle];
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __70__BKSHIDEventDeliveryRuleChangeTransaction_appendDescriptionToStream___block_invoke_6;
    v24 = &unk_1E6F47C78;
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v25 = v15;
    v26 = v16;
    [v13 overlayStyle:v21 block:{3221225472, __70__BKSHIDEventDeliveryRuleChangeTransaction_appendDescriptionToStream___block_invoke_6, &unk_1E6F47C78}];

    v3 = *(a1 + 40);
  }

  if (v3[6])
  {
    v17 = [*(a1 + 32) appendObject:? withName:?];
    v3 = *(a1 + 40);
  }

  if (v3[8])
  {
    v18 = [*(a1 + 32) appendObject:? withName:?];
    v3 = *(a1 + 40);
  }

  if (v3[7])
  {
    v19 = [*(a1 + 32) appendObject:? withName:?];
    v3 = *(a1 + 40);
  }

  if (v3[9])
  {
    v20 = [*(a1 + 32) appendObject:? withName:?];
  }
}

void __70__BKSHIDEventDeliveryRuleChangeTransaction_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 16) bs_map:?];
  v2 = [v1 appendObject:? withName:?];
}

void __70__BKSHIDEventDeliveryRuleChangeTransaction_appendDescriptionToStream___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 24) bs_map:?];
  v2 = [v1 appendObject:? withName:?];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:? forKey:?];
  if (self->_discreteDispatchingRules)
  {
    [coderCopy encodeObject:? forKey:?];
  }

  if (self->_deferringRules)
  {
    [coderCopy encodeObject:? forKey:?];
  }

  v4 = coderCopy;
  if (self->_keyCommandDispatchingRules)
  {
    [coderCopy encodeObject:? forKey:?];
    v4 = coderCopy;
  }

  if (self->_keyCommandsRegistrations)
  {
    [coderCopy encodeObject:? forKey:?];
    v4 = coderCopy;
  }

  if (self->_bufferingPredicates)
  {
    [coderCopy encodeObject:? forKey:?];
    v4 = coderCopy;
  }

  if (self->_modalityAssertions)
  {
    [coderCopy encodeObject:? forKey:?];
    v4 = coderCopy;
  }

  if (self->_constraintAssertions)
  {
    [coderCopy encodeObject:? forKey:?];
    v4 = coderCopy;
  }

  if (self->_selectionRequests)
  {
    [coderCopy encodeObject:? forKey:?];
    v4 = coderCopy;
  }
}

- (BKSHIDEventDeliveryRuleChangeTransaction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BKSHIDEventDeliveryRuleChangeTransaction *)self init];
  if (v5)
  {
    v5->_contentsMask = [coderCopy decodeIntegerForKey:?];
    v6 = objc_opt_class();
    v7 = _BKDecodeArrayOfClass(coderCopy, v6, @"discreteDispatchingRules");
    discreteDispatchingRules = v5->_discreteDispatchingRules;
    v5->_discreteDispatchingRules = v7;

    v9 = objc_opt_class();
    v10 = _BKDecodeArrayOfClass(coderCopy, v9, @"deferringRules");
    deferringRules = v5->_deferringRules;
    v5->_deferringRules = v10;

    v12 = objc_opt_class();
    v13 = _BKDecodeArrayOfClass(coderCopy, v12, @"keyCommandDispatchingRules");
    keyCommandDispatchingRules = v5->_keyCommandDispatchingRules;
    v5->_keyCommandDispatchingRules = v13;

    v15 = objc_opt_class();
    v16 = _BKDecodeArrayOfClass(coderCopy, v15, @"keyCommandsRegistrations");
    keyCommandsRegistrations = v5->_keyCommandsRegistrations;
    v5->_keyCommandsRegistrations = v16;

    v18 = objc_opt_class();
    v19 = _BKDecodeArrayOfClass(coderCopy, v18, @"bufferingPredicates");
    bufferingPredicates = v5->_bufferingPredicates;
    v5->_bufferingPredicates = v19;

    v21 = objc_opt_class();
    v22 = _BKDecodeArrayOfClass(coderCopy, v21, @"constraintAssertions");
    constraintAssertions = v5->_constraintAssertions;
    v5->_constraintAssertions = v22;

    v24 = objc_opt_class();
    v25 = _BKDecodeArrayOfClass(coderCopy, v24, @"modalityAssertions");
    modalityAssertions = v5->_modalityAssertions;
    v5->_modalityAssertions = v25;

    v27 = objc_opt_class();
    v28 = _BKDecodeArrayOfClass(coderCopy, v27, @"selectionRequests");
    selectionRequests = v5->_selectionRequests;
    v5->_selectionRequests = v28;
  }

  return v5;
}

- (void)setSelectionRequests:(id)requests
{
  v4 = [requests copy];
  selectionRequests = self->_selectionRequests;
  self->_selectionRequests = v4;

  self->_contentsMask |= 0x80uLL;
}

- (void)setModalityAssertions:(id)assertions
{
  v4 = [assertions copy];
  modalityAssertions = self->_modalityAssertions;
  self->_modalityAssertions = v4;

  self->_contentsMask |= 0x40uLL;
}

- (void)setConstraintAssertions:(id)assertions
{
  v4 = [assertions copy];
  constraintAssertions = self->_constraintAssertions;
  self->_constraintAssertions = v4;

  self->_contentsMask |= 0x20uLL;
}

- (void)setKeyCommandDispatchingRules:(id)rules
{
  v4 = [rules copy];
  keyCommandDispatchingRules = self->_keyCommandDispatchingRules;
  self->_keyCommandDispatchingRules = v4;

  self->_contentsMask |= 4uLL;
}

- (void)setKeyCommandsRegistrations:(id)registrations
{
  v4 = [registrations copy];
  keyCommandsRegistrations = self->_keyCommandsRegistrations;
  self->_keyCommandsRegistrations = v4;

  self->_contentsMask |= 8uLL;
}

- (void)setBufferingPredicates:(id)predicates
{
  v4 = [predicates copy];
  bufferingPredicates = self->_bufferingPredicates;
  self->_bufferingPredicates = v4;

  self->_contentsMask |= 0x10uLL;
}

- (void)setDiscreteDispatchingRules:(id)rules
{
  v4 = [rules copy];
  discreteDispatchingRules = self->_discreteDispatchingRules;
  self->_discreteDispatchingRules = v4;

  self->_contentsMask |= 1uLL;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = equalCopy;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    if (v9 && self->_contentsMask == v9->_contentsMask && BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && BSEqualObjects())
    {
      v8 = BSEqualObjects();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end