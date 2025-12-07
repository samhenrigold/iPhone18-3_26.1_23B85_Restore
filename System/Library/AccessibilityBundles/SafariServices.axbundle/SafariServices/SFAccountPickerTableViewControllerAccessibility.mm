@interface SFAccountPickerTableViewControllerAccessibility
@end

@implementation SFAccountPickerTableViewControllerAccessibility

void *__84___SFAccountPickerTableViewControllerAccessibility_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _rowTypeForIndexPath:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

@end