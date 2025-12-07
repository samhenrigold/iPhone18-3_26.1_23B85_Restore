@interface PXSectionedSelectionManager(PUOneUpSelectionIndicatorCompatibility)
- (uint64_t)pu_isAssetReferenceSelected:()PUOneUpSelectionIndicatorCompatibility;
@end

@implementation PXSectionedSelectionManager(PUOneUpSelectionIndicatorCompatibility)

- (uint64_t)pu_isAssetReferenceSelected:()PUOneUpSelectionIndicatorCompatibility
{
  v5 = objc_msgSend_indexPath(a3, a2);
  selectionSnapshot = [self selectionSnapshot];
  dataSource = [selectionSnapshot dataSource];
  [dataSource identifier];

  PXSimpleIndexPathFromIndexPath();
  memset(v10, 0, sizeof(v10));
  v8 = [selectionSnapshot isIndexPathSelected:v10];

  return v8;
}

@end