@interface WBSImageFetchingURLSessionTaskManager(ReadingListMetadataFetcherAdditions)
- (void)fetchThumbnailForBookmark:()ReadingListMetadataFetcherAdditions completion:;
@end

@implementation WBSImageFetchingURLSessionTaskManager(ReadingListMetadataFetcherAdditions)

- (void)fetchThumbnailForBookmark:()ReadingListMetadataFetcherAdditions completion:
{
  v6 = a4;
  v7 = a3;
  readingListIconURL = [v7 readingListIconURL];
  v9 = MEMORY[0x277CBEBC0];
  readingListIconURL2 = [v7 readingListIconURL];

  v11 = [v9 URLWithString:readingListIconURL2];

  if (v11)
  {
    mEMORY[0x277CBAB38] = [MEMORY[0x277CBAB38] sharedHTTPCookieStorage];
    webui_safariCookieAcceptPolicyEnumValue = [mEMORY[0x277CBAB38] webui_safariCookieAcceptPolicyEnumValue];

    if (webui_safariCookieAcceptPolicyEnumValue == 1)
    {
      v16 = 3;
    }

    else
    {
      v16 = 1;
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __115__WBSImageFetchingURLSessionTaskManager_ReadingListMetadataFetcherAdditions__fetchThumbnailForBookmark_completion___block_invoke;
    v18[3] = &unk_2781D7CC0;
    v20 = v6;
    v19 = readingListIconURL;
    [self downloadImageWithURL:v11 options:v16 completionHandler:v18];
  }

  else
  {
    v17 = WBS_LOG_CHANNEL_PREFIXReadingList(v12, v13);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [WBSImageFetchingURLSessionTaskManager(ReadingListMetadataFetcherAdditions) fetchThumbnailForBookmark:completion:];
    }

    (*(v6 + 2))(v6, 0, 0, 0);
  }
}

@end