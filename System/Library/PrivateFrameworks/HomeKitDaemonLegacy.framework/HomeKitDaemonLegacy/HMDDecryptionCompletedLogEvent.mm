@interface HMDDecryptionCompletedLogEvent
+ (id)decryptionCompletedWithFailure:(BOOL)failure;
- (HMDDecryptionCompletedLogEvent)initWithFailure:(BOOL)failure;
@end

@implementation HMDDecryptionCompletedLogEvent

- (HMDDecryptionCompletedLogEvent)initWithFailure:(BOOL)failure
{
  v5.receiver = self;
  v5.super_class = HMDDecryptionCompletedLogEvent;
  result = [(HMMLogEvent *)&v5 init];
  if (result)
  {
    result->_didDecryptionFail = failure;
  }

  return result;
}

+ (id)decryptionCompletedWithFailure:(BOOL)failure
{
  v3 = [[HMDDecryptionCompletedLogEvent alloc] initWithFailure:failure];

  return v3;
}

@end