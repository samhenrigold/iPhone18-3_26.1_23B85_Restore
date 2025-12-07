@interface QLItemFetcherFactory
+ (id)fetcherForPreviewItem:(id)item;
+ (id)possibleFetcherClasses;
@end

@implementation QLItemFetcherFactory

+ (id)fetcherForPreviewItem:(id)item
{
  v34 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if ([itemCopy isPromisedItem])
  {
LABEL_2:
    v4 = 0;
    goto LABEL_11;
  }

  v5 = [itemCopy previewItemType] == 6 || objc_msgSend(itemCopy, "previewItemType") == 4;
  sandboxingURLWrapper = [itemCopy sandboxingURLWrapper];

  if (sandboxingURLWrapper)
  {
    v7 = [QLUbiquitousItemFetcher alloc];
    sandboxingURLWrapper2 = [itemCopy sandboxingURLWrapper];
    v9 = [(QLUbiquitousItemFetcher *)v7 initWithSandboxingURLWrapper:sandboxingURLWrapper2 shouldZipPackageIfNeeded:v5];
LABEL_10:
    v4 = v9;

    goto LABEL_11;
  }

  previewItemURL = [itemCopy previewItemURL];

  if (previewItemURL)
  {
    v11 = [QLUbiquitousItemFetcher alloc];
    sandboxingURLWrapper2 = [itemCopy previewItemURL];
    v9 = [(QLUbiquitousItemFetcher *)v11 initWithURL:sandboxingURLWrapper2 shouldZipPackageIfNeeded:v5];
    goto LABEL_10;
  }

  previewItemData = [itemCopy previewItemData];

  if (previewItemData)
  {
    v14 = [QLDataFetcher alloc];
    previewItemData2 = [itemCopy previewItemData];
    previewItemContentType = [itemCopy previewItemContentType];
    previewItemTitle = [itemCopy previewItemTitle];
    v18 = [(QLDataFetcher *)v14 initWithData:previewItemData2 contentType:previewItemContentType previewItemTitle:previewItemTitle];
  }

  else
  {
    previewItemDataProvider = [itemCopy previewItemDataProvider];

    if (previewItemDataProvider)
    {
      v20 = [QLDataFetcher alloc];
      previewItemData2 = [itemCopy previewItemContentType];
      v4 = [(QLDataFetcher *)v20 initWithItem:itemCopy contentType:previewItemData2];
      goto LABEL_21;
    }

    previewItemProvider = [itemCopy previewItemProvider];

    if (previewItemProvider)
    {
      v22 = [QLItemProviderFetcher alloc];
      previewItemContentType2 = [itemCopy previewItemContentType];
      itemSize = [itemCopy itemSize];
      v4 = [(QLItemProviderFetcher *)v22 initWithContentType:previewItemContentType2 fileSize:itemSize];

      previewItemData2 = [itemCopy previewItemProvider];
      [(QLDataFetcher *)v4 setItemProvider:previewItemData2];
      goto LABEL_21;
    }

    searchableItemIdentifier = [itemCopy searchableItemIdentifier];
    if (!searchableItemIdentifier || (v26 = searchableItemIdentifier, [itemCopy searchableItemApplicationBundleIdentifier], v27 = objc_claimAutoreleasedReturnValue(), v27, v26, !v27))
    {
      fpItem = [itemCopy fpItem];

      if (!fpItem)
      {
        v31 = QLSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v32 = 138412290;
          v33 = itemCopy;
          _os_log_impl(&dword_261653000, v31, OS_LOG_TYPE_DEBUG, "No fetcher available for item: %@ #PreviewItem", &v32, 0xCu);
        }

        goto LABEL_2;
      }

      v30 = [QLFPItemFetcher alloc];
      sandboxingURLWrapper2 = [itemCopy fpItem];
      v9 = [(QLFPItemFetcher *)v30 initWithFPItem:sandboxingURLWrapper2 shouldZipPackageIfNeeded:v5];
      goto LABEL_10;
    }

    v28 = [QLSpotlightFetcher alloc];
    previewItemData2 = [itemCopy searchableItemIdentifier];
    previewItemContentType = [itemCopy spotlightQueryString];
    previewItemTitle = [itemCopy searchableItemApplicationBundleIdentifier];
    v18 = [(QLSpotlightFetcher *)v28 initWithSearchableItemUniqueIdentifier:previewItemData2 queryString:previewItemContentType applicationBundleIdentifier:previewItemTitle];
  }

  v4 = v18;

LABEL_21:
LABEL_11:

  return v4;
}

+ (id)possibleFetcherClasses
{
  if (possibleFetcherClasses_onceToken != -1)
  {
    +[QLItemFetcherFactory possibleFetcherClasses];
  }

  v3 = possibleFetcherClasses__possibleFetcherClasses;

  return v3;
}

uint64_t __46__QLItemFetcherFactory_possibleFetcherClasses__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  possibleFetcherClasses__possibleFetcherClasses = [v0 setWithObjects:{v1, v2, v3, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

@end