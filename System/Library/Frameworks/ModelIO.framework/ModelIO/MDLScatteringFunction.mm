@interface MDLScatteringFunction
- (MDLScatteringFunction)init;
@end

@implementation MDLScatteringFunction

- (MDLScatteringFunction)init
{
  v4 = *MEMORY[0x277D85DE8];
  v3.receiver = self;
  v3.super_class = MDLScatteringFunction;
  if ([(MDLScatteringFunction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

@end