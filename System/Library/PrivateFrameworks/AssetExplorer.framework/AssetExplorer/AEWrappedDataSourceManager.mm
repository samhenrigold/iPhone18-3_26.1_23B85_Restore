@interface AEWrappedDataSourceManager
- (void)_createDataSourceFromAssetsDataSource:(id)source changeDetails:(id)details;
- (void)attachDataSourceManager:(id)manager;
- (void)detachCurrentDataSourceManager;
@end

@implementation AEWrappedDataSourceManager

- (void)_createDataSourceFromAssetsDataSource:(id)source changeDetails:(id)details
{
  v17[1] = *MEMORY[0x277D85DE8];
  detailsCopy = details;
  sourceCopy = source;
  dataSource = [(PXSectionedDataSourceManager *)self dataSource];
  v9 = [[AEWrappedAssetsDataSource alloc] initWithReviewAssetsDataSource:sourceCopy];

  if (!detailsCopy)
  {
    v10 = 0;
    if (dataSource)
    {
      goto LABEL_3;
    }

LABEL_5:
    identifier = 0;
    goto LABEL_6;
  }

  v16 = &unk_2852F9590;
  v17[0] = detailsCopy;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  if (!dataSource)
  {
    goto LABEL_5;
  }

LABEL_3:
  identifier = [dataSource identifier];
LABEL_6:
  identifier2 = [(AEWrappedAssetsDataSource *)v9 identifier];
  v13 = objc_alloc(MEMORY[0x277D3CDD0]);
  changeDetailsWithNoChanges = [MEMORY[0x277D3CCC8] changeDetailsWithNoChanges];
  v15 = [v13 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2 sectionChanges:changeDetailsWithNoChanges itemChangeDetailsBySection:v10 subitemChangeDetailsByItemBySection:0];

  [(PXSectionedDataSourceManager *)self setDataSource:v9 changeDetails:v15];
}

- (void)detachCurrentDataSourceManager
{
  _attachedDataSourceManager = [(AEWrappedDataSourceManager *)self _attachedDataSourceManager];
  [_attachedDataSourceManager setDelegate:0];
  [(AEWrappedDataSourceManager *)self _setAttachedDataSourceManager:0];
}

- (void)attachDataSourceManager:(id)manager
{
  managerCopy = manager;
  assetsDataSource = [managerCopy assetsDataSource];
  [(AEWrappedDataSourceManager *)self _createDataSourceFromAssetsDataSource:assetsDataSource changeDetails:0];
  [(AEWrappedDataSourceManager *)self _setAttachedDataSourceManager:managerCopy];
  [managerCopy setDelegate:self];
  [managerCopy setReviewDelegate:self];
}

@end