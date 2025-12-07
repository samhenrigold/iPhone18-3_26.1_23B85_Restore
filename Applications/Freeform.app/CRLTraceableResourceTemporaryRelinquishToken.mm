@interface CRLTraceableResourceTemporaryRelinquishToken
- (void)dealloc;
@end

@implementation CRLTraceableResourceTemporaryRelinquishToken

- (void)dealloc
{
  if (!self->_didCallCompletionHandler)
  {
    sub_1004D5B78();
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101384DF8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101384E0C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101384E94();
    }

    v2 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v2);
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Operation completion handler is getting deallocated before it was invoked.", "[CRLTraceableResourceTemporaryRelinquishToken dealloc]", "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTraceableResource.m", 741);
    v3 = [NSString stringWithUTF8String:"[CRLTraceableResourceTemporaryRelinquishToken dealloc]"];
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTraceableResource.m"];
    [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:741 isFatal:1 description:"Operation completion handler is getting deallocated before it was invoked."];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v5, v6);
    abort();
  }

  v7.receiver = self;
  v7.super_class = CRLTraceableResourceTemporaryRelinquishToken;
  [(CRLTraceableResourceTemporaryRelinquishToken *)&v7 dealloc];
}

@end