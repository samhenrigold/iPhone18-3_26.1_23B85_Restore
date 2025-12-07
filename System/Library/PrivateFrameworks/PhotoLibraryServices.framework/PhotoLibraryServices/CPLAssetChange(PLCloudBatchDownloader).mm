@interface CPLAssetChange(PLCloudBatchDownloader)
- (uint64_t)qualifiesForDeviceLibraryConfiguration:()PLCloudBatchDownloader sharingScopeIdentifier:mainScopeIdentifier:;
@end

@implementation CPLAssetChange(PLCloudBatchDownloader)

- (uint64_t)qualifiesForDeviceLibraryConfiguration:()PLCloudBatchDownloader sharingScopeIdentifier:mainScopeIdentifier:
{
  v8 = a4;
  v9 = a5;
  scopedIdentifier = [self scopedIdentifier];
  scopeIdentifier = [scopedIdentifier scopeIdentifier];
  isEqualToString = objc_msgSend_isEqualToString_(scopeIdentifier);

  if (isEqualToString)
  {
    sharingScopeIdentifier = [self sharingScopeIdentifier];
    v14 = sharingScopeIdentifier;
    if (a3 == 2)
    {
      v15 = sharingScopeIdentifier == 0;
    }

    else if (a3 == 1)
    {
      v15 = objc_msgSend_isEqualToString_(sharingScopeIdentifier);
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

@end