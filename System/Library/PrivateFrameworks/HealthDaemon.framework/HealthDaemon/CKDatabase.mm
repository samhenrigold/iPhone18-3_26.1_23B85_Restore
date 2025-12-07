@interface CKDatabase
@end

@implementation CKDatabase

uint64_t __64__CKDatabase_OperationAnalytics__hd_addOperationObserver_queue___block_invoke(uint64_t a1)
{
  _HKInitializeLogging();
  v1 = objc_alloc(MEMORY[0x277CCD738]);
  v2 = [v1 initWithName:@"CloudSyncOperationObservation" loggingCategory:*MEMORY[0x277CCC328]];
  v3 = qword_280D67BF8;
  qword_280D67BF8 = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

@end