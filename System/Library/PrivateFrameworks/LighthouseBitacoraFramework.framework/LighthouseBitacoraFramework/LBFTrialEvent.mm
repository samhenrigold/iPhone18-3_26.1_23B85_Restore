@interface LBFTrialEvent
- (BOOL)isEqual:(id)equal;
- (LBFTrialEvent)initWithActivation:(BOOL)activation;
- (LBFTrialEvent)initWithAllocation:(BOOL)allocation;
- (LBFTrialEvent)initWithDeactivation:(BOOL)deactivation;
@end

@implementation LBFTrialEvent

- (LBFTrialEvent)initWithAllocation:(BOOL)allocation
{
  allocationCopy = allocation;
  v10.receiver = self;
  v10.super_class = LBFTrialEvent;
  v5 = [(LBFTrialEvent *)&v10 init];
  if (v5)
  {
    v7 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, v6, allocationCopy);
    succeeded = v5->_succeeded;
    v5->_succeeded = v7;

    v5->_eventType = 1;
  }

  return v5;
}

- (LBFTrialEvent)initWithActivation:(BOOL)activation
{
  activationCopy = activation;
  v10.receiver = self;
  v10.super_class = LBFTrialEvent;
  v5 = [(LBFTrialEvent *)&v10 init];
  if (v5)
  {
    v7 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, v6, activationCopy);
    succeeded = v5->_succeeded;
    v5->_succeeded = v7;

    v5->_eventType = 2;
  }

  return v5;
}

- (LBFTrialEvent)initWithDeactivation:(BOOL)deactivation
{
  deactivationCopy = deactivation;
  v10.receiver = self;
  v10.super_class = LBFTrialEvent;
  v5 = [(LBFTrialEvent *)&v10 init];
  if (v5)
  {
    v7 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, v6, deactivationCopy);
    succeeded = v5->_succeeded;
    v5->_succeeded = v7;

    v5->_eventType = 3;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    goto LABEL_6;
  }

  if (!equalCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v25 = LBFLogContextEventManager;
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0C278(v25);
    }

    goto LABEL_9;
  }

  v9 = objc_msgSend_succeeded(v5, v6, v8, v7);
  v13 = objc_msgSend_succeeded(self, v10, v12, v11);
  IsEqualNumberOrNil_n2 = objc_msgSend_IsEqualNumberOrNil_n2_(LBFUtils, v14, v15, v9, v13);

  if ((IsEqualNumberOrNil_n2 & 1) == 0)
  {
    v27 = LBFLogContextEventManager;
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0C104(v27, v5, self);
    }

    goto LABEL_9;
  }

  v20 = objc_msgSend_eventType(v5, v17, v19, v18);
  if (v20 != objc_msgSend_eventType(self, v21, v23, v22))
  {
    v28 = LBFLogContextEventManager;
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0C1C8(v28, v5, self);
    }

LABEL_9:
    v24 = 0;
    goto LABEL_10;
  }

LABEL_6:
  v24 = 1;
LABEL_10:

  return v24;
}

@end