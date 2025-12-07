@interface WFOnScreenContentService
@end

@implementation WFOnScreenContentService

uint64_t __108__WFOnScreenContentService_WFContentCollection__getOnScreenContentForInputContentClasses_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    [*(a1 + 32) populateOutputFromNodeRecursively:a2 outputCollection:*(a1 + 40)];
  }

  v4 = *(*(a1 + 48) + 16);

  return v4();
}

@end