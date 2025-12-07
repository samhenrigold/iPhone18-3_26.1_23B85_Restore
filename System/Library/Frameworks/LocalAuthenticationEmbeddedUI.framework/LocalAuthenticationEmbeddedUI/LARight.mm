@interface LARight
- (id)_authOptionsWithLocalizedReason:(void *)reason presentationContext:;
@end

@implementation LARight

- (id)_authOptionsWithLocalizedReason:(void *)reason presentationContext:
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  reasonCopy = reason;
  if (self)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23F30]];
    v8 = v7;
    v9 = &stru_284B7B4C0;
    if (v5)
    {
      v9 = v5;
    }

    v13 = v7;
    v14[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    self = [v10 mutableCopy];

    if (reasonCopy)
    {
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23FB0]];
      [self setObject:reasonCopy forKeyedSubscript:v11];
    }
  }

  return self;
}

@end