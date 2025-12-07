@interface __NSDate
- (__NSDate)initWithTimeIntervalSinceReferenceDate:(double)date;
- (void)dealloc;
@end

@implementation __NSDate

- (void)dealloc
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = self;
  v2.super_class = __NSDate;
  [(__NSDate *)&v2 dealloc];
}

- (__NSDate)initWithTimeIntervalSinceReferenceDate:(double)date
{
  v4 = [NSDate alloc];

  return [(NSDate *)v4 initWithTimeIntervalSinceReferenceDate:date];
}

@end