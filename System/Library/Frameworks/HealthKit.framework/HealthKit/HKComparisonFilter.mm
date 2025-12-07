@interface HKComparisonFilter
@end

@implementation HKComparisonFilter

BOOL __68___HKComparisonFilter__isValidValue_forKeyPath_allowedClases_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  if (*(a1 + 32))
  {
    return 0;
  }

  return objc_opt_class() == a2;
}

@end