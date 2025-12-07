@interface CAFChangeMediaSourceControl
+ (void)load;
- (void)changeMediaSourceWithIdentifier:(id)identifier completion:(id)completion;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFChangeMediaSourceControl

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFChangeMediaSourceControl;
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
  v6.super_class = CAFChangeMediaSourceControl;
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
  v6.super_class = CAFChangeMediaSourceControl;
  [(CAFControl *)&v6 unregisterObserver:v5];
}

- (void)changeMediaSourceWithIdentifier:(id)identifier completion:(id)completion
{
  v14[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v13 = @"identifier";
  v14[0] = identifier;
  v7 = MEMORY[0x277CBEAC0];
  identifierCopy = identifier;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__CAFChangeMediaSourceControl_changeMediaSourceWithIdentifier_completion___block_invoke;
  v11[3] = &unk_27890EFF8;
  v12 = completionCopy;
  v10 = completionCopy;
  [(CAFControl *)self requestWithValue:v9 response:v11];
}

uint64_t __74__CAFChangeMediaSourceControl_changeMediaSourceWithIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

@end