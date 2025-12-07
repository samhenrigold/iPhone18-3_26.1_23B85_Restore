@interface CAFTestDevRequestWithReqParamsControl
+ (void)load;
- (void)registerObserver:(id)observer;
- (void)testDevRequestWithReqParamsWithTestInput1:(unsigned __int8)input1 testInput2:(id)input2 completion:(id)completion;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFTestDevRequestWithReqParamsControl

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTestDevRequestWithReqParamsControl;
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
  v6.super_class = CAFTestDevRequestWithReqParamsControl;
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
  v6.super_class = CAFTestDevRequestWithReqParamsControl;
  [(CAFControl *)&v6 unregisterObserver:v5];
}

- (void)testDevRequestWithReqParamsWithTestInput1:(unsigned __int8)input1 testInput2:(id)input2 completion:(id)completion
{
  input1Copy = input1;
  v17[2] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v16[0] = @"testInput1";
  v9 = MEMORY[0x277CCABB0];
  input2Copy = input2;
  v11 = [v9 numberWithUnsignedChar:input1Copy];
  v16[1] = @"testInput2";
  v17[0] = v11;
  v17[1] = input2Copy;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __105__CAFTestDevRequestWithReqParamsControl_testDevRequestWithReqParamsWithTestInput1_testInput2_completion___block_invoke;
  v14[3] = &unk_27890EFF8;
  v15 = completionCopy;
  v13 = completionCopy;
  [(CAFControl *)self requestWithValue:v12 response:v14];
}

uint64_t __105__CAFTestDevRequestWithReqParamsControl_testDevRequestWithReqParamsWithTestInput1_testInput2_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

@end