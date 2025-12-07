@interface RKPaymentIdentifier
+ (id)sharedManager;
- (id)amountsFromMessage:(id)message;
- (id)copyAttributedTokensForText:(id)text;
@end

@implementation RKPaymentIdentifier

+ (id)sharedManager
{
  if (sharedManager_onceToken_2 != -1)
  {
    +[RKPaymentIdentifier sharedManager];
  }

  v3 = sharedManager_sharedPaymentIdentifier;

  return v3;
}

uint64_t __36__RKPaymentIdentifier_sharedManager__block_invoke()
{
  sharedManager_sharedPaymentIdentifier = objc_alloc_init(RKPaymentIdentifier);

  return MEMORY[0x2821F96F8]();
}

- (id)amountsFromMessage:(id)message
{
  messageCopy = message;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__RKPaymentIdentifier_amountsFromMessage___block_invoke;
  block[3] = &unk_279B10020;
  block[4] = v13;
  if (amountsFromMessage__onceToken != -1)
  {
    dispatch_once(&amountsFromMessage__onceToken, block);
  }

  if (amountsFromMessage__scanner && DDScannerScanString() && (v4 = DDScannerCopyResultsWithOptions(), (v5 = v4) != 0))
  {
    Count = CFArrayGetCount(v4);
    if (Count < 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      for (i = 0; i != Count; ++i)
      {
        CFArrayGetValueAtIndex(v5, i);
        if (DDResultHasType())
        {
          Value = DDResultGetValue();
          if (DDResultCurrencyExtraction())
          {
            v10 = [[RKCurrencyAmount alloc] initWithString:Value currency:0 value:0.0];
            [v7 addObject:v10];
          }
        }
      }
    }

    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(v13, 8);

  return v7;
}

uint64_t __42__RKPaymentIdentifier_amountsFromMessage___block_invoke(uint64_t a1)
{
  result = DDScannerCreateWithType();
  amountsFromMessage__scanner = result;
  return result;
}

- (id)copyAttributedTokensForText:(id)text
{
  v3 = [(RKPaymentIdentifier *)self amountsFromMessage:text];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v5 setValue:@"money" forKey:*MEMORY[0x277D23050]];
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v6 setValue:v4 forKey:@"xCURRENCYAMOUNTx"];
    [v5 setValue:v6 forKey:*MEMORY[0x277D22FF8]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end