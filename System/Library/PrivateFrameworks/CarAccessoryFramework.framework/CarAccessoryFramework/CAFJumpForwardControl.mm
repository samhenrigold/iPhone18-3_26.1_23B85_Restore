@interface CAFJumpForwardControl
+ (void)load;
- (void)jumpForwardWithJumpInterval:(unsigned __int16)interval completion:(id)completion;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFJumpForwardControl

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFJumpForwardControl;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_2846ABC08])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFJumpForwardControl;
  [(CAFControl *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_2846ABC08])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFJumpForwardControl;
  [(CAFControl *)&v6 unregisterObserver:v5];
}

- (void)jumpForwardWithJumpInterval:(unsigned __int16)interval completion:(id)completion
{
  intervalCopy = interval;
  v13[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v12 = @"jumpInterval";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:intervalCopy];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__CAFJumpForwardControl_jumpForwardWithJumpInterval_completion___block_invoke;
  v10[3] = &unk_27890EFF8;
  v11 = completionCopy;
  v9 = completionCopy;
  [(CAFControl *)self requestWithValue:v8 response:v10];
}

uint64_t __64__CAFJumpForwardControl_jumpForwardWithJumpInterval_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

@end