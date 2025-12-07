@interface LBFDprivacydEvent
- (LBFDprivacydEvent)initWithEventPhase:(int)phase eventUUID:(id)d succeeded:(BOOL)succeeded error:(id)error aggregateFunction:(int)function count:(int)count;
@end

@implementation LBFDprivacydEvent

- (LBFDprivacydEvent)initWithEventPhase:(int)phase eventUUID:(id)d succeeded:(BOOL)succeeded error:(id)error aggregateFunction:(int)function count:(int)count
{
  succeededCopy = succeeded;
  dCopy = d;
  errorCopy = error;
  v32.receiver = self;
  v32.super_class = LBFDprivacydEvent;
  v17 = [(LBFDprivacydEvent *)&v32 init];
  v18 = v17;
  if (v17)
  {
    v17->_eventPhase = phase;
    objc_storeStrong(&v17->_eventUUID, d);
    v21 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v19, v20, succeededCopy);
    succeeded = v18->_succeeded;
    v18->_succeeded = v21;

    v18->_errorCode = objc_msgSend_code(errorCopy, v23, v25, v24);
    v29 = objc_msgSend_localizedDescription(errorCopy, v26, v28, v27);
    errorMessage = v18->_errorMessage;
    v18->_errorMessage = v29;

    v18->_aggregateFunction = function;
    v18->_count = count;
  }

  return v18;
}

@end