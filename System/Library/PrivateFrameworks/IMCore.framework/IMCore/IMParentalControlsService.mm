@interface IMParentalControlsService
- (void)dealloc;
@end

@implementation IMParentalControlsService

- (void)dealloc
{
  [(IMParentalControlsService *)self setAllowlist:0];
  [(IMParentalControlsService *)self setName:0];
  v3.receiver = self;
  v3.super_class = IMParentalControlsService;
  [(IMParentalControlsService *)&v3 dealloc];
}

@end