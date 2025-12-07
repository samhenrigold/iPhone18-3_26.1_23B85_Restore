@interface CKDiscretionaryDASScheduler
+ (id)scheduleOperationID:(id)d group:(id)group bundleID:(id)iD requiresPastBuddy:(BOOL)buddy options:(id)options state:(unint64_t)state queue:(id)queue startHandler:(id)self0 suspendHandler:(id)self1;
@end

@implementation CKDiscretionaryDASScheduler

+ (id)scheduleOperationID:(id)d group:(id)group bundleID:(id)iD requiresPastBuddy:(BOOL)buddy options:(id)options state:(unint64_t)state queue:(id)queue startHandler:(id)self0 suspendHandler:(id)self1
{
  buddyCopy = buddy;
  suspendHandlerCopy = suspendHandler;
  handlerCopy = handler;
  queueCopy = queue;
  optionsCopy = options;
  iDCopy = iD;
  groupCopy = group;
  dCopy = d;
  dispatch_assert_queue_V2(queueCopy);
  v24 = [[CKDiscretionaryDASSchedulerTask alloc] initWithOperationID:dCopy group:groupCopy bundleID:iDCopy requiresPastBuddy:buddyCopy options:optionsCopy state:state queue:queueCopy startHandler:handlerCopy suspendHandler:suspendHandlerCopy];

  [(CKDiscretionaryDASSchedulerTask *)v24 _schedule];

  return v24;
}

@end