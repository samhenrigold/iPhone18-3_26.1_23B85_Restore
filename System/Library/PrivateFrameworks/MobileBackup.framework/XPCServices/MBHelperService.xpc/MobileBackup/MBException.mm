@interface MBException
- (MBException)initWithCode:(int)code format:(id)format args:(char *)args;
- (id)error;
- (int)errorCode;
@end

@implementation MBException

- (MBException)initWithCode:(int)code format:(id)format args:(char *)args
{
  v6 = *&code;
  formatCopy = format;
  v9 = [[NSString alloc] initWithFormat:formatCopy arguments:args];

  v15 = @"MBErrorCode";
  v10 = [NSNumber numberWithInt:v6];
  v16 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

  v14.receiver = self;
  v14.super_class = MBException;
  v12 = [(MBException *)&v14 initWithName:@"MBException" reason:v9 userInfo:v11];

  return v12;
}

- (int)errorCode
{
  userInfo = [(MBException *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"MBErrorCode"];
  intValue = [v3 intValue];

  return intValue;
}

- (id)error
{
  errorCode = [(MBException *)self errorCode];
  reason = [(MBException *)self reason];
  v5 = [MBError errorWithCode:errorCode format:@"%@", reason];

  return v5;
}

@end