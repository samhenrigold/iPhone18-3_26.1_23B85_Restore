@interface LABKOperation
@end

@implementation LABKOperation

void __65___LABKOperation_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 operation:*(a1 + 32) presenceStateChanged:{objc_msgSend(*(a1 + 32), "isUserPresent")}];
}

void __65___LABKOperation_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 operation:*(a1 + 32) stateChanged:4];
}

void __33___LABKOperation_startWithReply___block_invoke(void *a1, int a2, void *a3)
{
  v7 = a3;
  v5 = objc_opt_class();
  v6 = @"YES";
  if (!a2)
  {
    v6 = v7;
  }

  [_LABKLog logClass:v5 selector:a1[6] message:@"started: %@", v6];
  (*(a1[5] + 16))();
}

@end