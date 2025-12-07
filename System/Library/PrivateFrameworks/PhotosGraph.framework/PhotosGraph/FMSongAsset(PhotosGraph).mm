@interface FMSongAsset(PhotosGraph)
- (void)pg_requestDownloadIfNeeded;
@end

@implementation FMSongAsset(PhotosGraph)

- (void)pg_requestDownloadIfNeeded
{
  if (![self localURLExists] || (result = objc_msgSend(self, "contentUpdateAvailable"), result))
  {

    return [self requestDownload];
  }

  return result;
}

@end