@interface MRResultReason
- (MRResultReason)initWithResult:(BOOL)result format:(id)format;
- (MRResultReason)initWithResult:(BOOL)result reason:(id)reason;
@end

@implementation MRResultReason

- (MRResultReason)initWithResult:(BOOL)result reason:(id)reason
{
  reasonCopy = reason;
  v11.receiver = self;
  v11.super_class = MRResultReason;
  v8 = [(MRResultReason *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_result = result;
    objc_storeStrong(&v8->_reason, reason);
  }

  return v9;
}

- (MRResultReason)initWithResult:(BOOL)result format:(id)format
{
  resultCopy = result;
  if (format)
  {
    v6 = MEMORY[0x1E696AEC0];
    formatCopy = format;
    v8 = [[v6 alloc] initWithFormat:formatCopy arguments:&v11];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(MRResultReason *)self initWithResult:resultCopy reason:v8];

  return v9;
}

@end