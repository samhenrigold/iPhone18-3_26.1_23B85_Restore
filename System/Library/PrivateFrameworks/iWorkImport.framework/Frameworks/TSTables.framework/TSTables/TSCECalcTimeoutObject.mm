@interface TSCECalcTimeoutObject
- (TSCECalcTimeoutObject)initWithTimeout:(double)timeout;
@end

@implementation TSCECalcTimeoutObject

- (TSCECalcTimeoutObject)initWithTimeout:(double)timeout
{
  v13.receiver = self;
  v13.super_class = TSCECalcTimeoutObject;
  v4 = [(TSCECalcTimeoutObject *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_timeoutInterval = timeout;
    add = atomic_fetch_add(dword_27CFB5578, 1u);
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = objc_msgSend_initWithFormat_(v7, v8, @"kTSCERecalcLoopGroupEmpty%u", v9, add + 1);
    blockingIdentifier = v5->_blockingIdentifier;
    v5->_blockingIdentifier = v10;
  }

  return v5;
}

@end