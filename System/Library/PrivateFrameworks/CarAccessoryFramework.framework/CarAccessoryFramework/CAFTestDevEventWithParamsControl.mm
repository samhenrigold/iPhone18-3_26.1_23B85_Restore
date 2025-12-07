@interface CAFTestDevEventWithParamsControl
+ (void)load;
- (void)registerObserver:(id)observer;
- (void)testDevEventWithParamsWithTestInput9:(unsigned __int8)input9 testInput10:(id)input10;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFTestDevEventWithParamsControl

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTestDevEventWithParamsControl;
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
  v6.super_class = CAFTestDevEventWithParamsControl;
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
  v6.super_class = CAFTestDevEventWithParamsControl;
  [(CAFControl *)&v6 unregisterObserver:v5];
}

- (void)testDevEventWithParamsWithTestInput9:(unsigned __int8)input9 testInput10:(id)input10
{
  input9Copy = input9;
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"testInput9";
  v6 = MEMORY[0x277CCABB0];
  input10Copy = input10;
  v8 = [v6 numberWithUnsignedChar:input9Copy];
  v10[1] = @"testInput10";
  v11[0] = v8;
  v11[1] = input10Copy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  [(CAFControl *)self notifyWithValue:v9];
}

@end