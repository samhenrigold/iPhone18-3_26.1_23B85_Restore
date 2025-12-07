@interface AXCatalogRefreshTask
- (AXCatalogRefreshTask)initWithPolicy:(id)policy forceCatalogRefresh:(BOOL)refresh context:(id)context;
- (void)_refreshCatalog:(BOOL)catalog;
@end

@implementation AXCatalogRefreshTask

- (AXCatalogRefreshTask)initWithPolicy:(id)policy forceCatalogRefresh:(BOOL)refresh context:(id)context
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000023B0;
  v7[3] = &unk_1000186C0;
  refreshCopy = refresh;
  v6.receiver = self;
  v6.super_class = AXCatalogRefreshTask;
  return [(AXManagedAssetTask *)&v6 initWithName:@"Catalog Refresh" policy:policy context:context block:v7];
}

- (void)_refreshCatalog:(BOOL)catalog
{
  catalogCopy = catalog;
  v5 = AXLogAssetDaemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if (catalogCopy)
    {
      v6 = @"force-update";
    }

    else
    {
      v6 = @"attempt to update";
    }

    overrideTimeout = [(AXCatalogRefreshTask *)self overrideTimeout];
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = overrideTimeout;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "AXCatalogRefreshTask: Will %@ catalog now. timeout=%@", &v11, 0x16u);
  }

  assetController = [(AXManagedAssetTask *)self assetController];
  overrideTimeout2 = [(AXCatalogRefreshTask *)self overrideTimeout];
  [assetController refreshAssetsByForceUpdatingCatalog:catalogCopy updatingCatalogIfNeeded:catalogCopy ^ 1 catalogRefreshOverrideTimeout:overrideTimeout2 completion:0];

  assetController2 = [(AXManagedAssetTask *)self assetController];
  [assetController2 addObserver:self];
}

@end