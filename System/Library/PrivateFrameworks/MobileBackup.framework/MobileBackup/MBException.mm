@interface MBException
- (MBException)initWithCode:(int)code format:(id)format args:(char *)args;
- (id)error;
- (int)errorCode;
@end

@implementation MBException

- (MBException)initWithCode:(int)code format:(id)format args:(char *)args
{
  v6 = *&code;
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  v10 = [[v8 alloc] initWithFormat:formatCopy arguments:args];

  v16 = @"MBErrorCode";
  v11 = [MEMORY[0x1E696AD98] numberWithInt:v6];
  v17[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];

  v15.receiver = self;
  v15.super_class = MBException;
  v13 = [(MBException *)&v15 initWithName:@"MBException" reason:v10 userInfo:v12];

  return v13;
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