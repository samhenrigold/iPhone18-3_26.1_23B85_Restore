@interface CAFTuneToFrequencyControl
+ (void)load;
- (void)registerObserver:(id)observer;
- (void)tuneToFrequency:(unsigned int)frequency sourceIdentifier:(id)identifier completion:(id)completion;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFTuneToFrequencyControl

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTuneToFrequencyControl;
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
  v6.super_class = CAFTuneToFrequencyControl;
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
  v6.super_class = CAFTuneToFrequencyControl;
  [(CAFControl *)&v6 unregisterObserver:v5];
}

- (void)tuneToFrequency:(unsigned int)frequency sourceIdentifier:(id)identifier completion:(id)completion
{
  v6 = *&frequency;
  v17[2] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v16[0] = @"frequency";
  v9 = MEMORY[0x277CCABB0];
  identifierCopy = identifier;
  v11 = [v9 numberWithUnsignedInt:v6];
  v16[1] = @"sourceIdentifier";
  v17[0] = v11;
  v17[1] = identifierCopy;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__CAFTuneToFrequencyControl_tuneToFrequency_sourceIdentifier_completion___block_invoke;
  v14[3] = &unk_27890EFF8;
  v15 = completionCopy;
  v13 = completionCopy;
  [(CAFControl *)self requestWithValue:v12 response:v14];
}

uint64_t __73__CAFTuneToFrequencyControl_tuneToFrequency_sourceIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

@end