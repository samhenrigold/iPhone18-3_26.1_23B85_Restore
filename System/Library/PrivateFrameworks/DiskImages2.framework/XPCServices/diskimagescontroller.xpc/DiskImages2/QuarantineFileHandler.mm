@interface QuarantineFileHandler
- (QuarantineFileHandler)initWithFD:(int)d error:(id *)error;
@end

@implementation QuarantineFileHandler

- (QuarantineFileHandler)initWithFD:(int)d error:(id *)error
{
  v5.receiver = self;
  v5.super_class = QuarantineFileHandler;
  return [(QuarantineFileHandler *)&v5 init:*&d];
}

@end