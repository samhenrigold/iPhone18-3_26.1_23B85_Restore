@interface AEAnnotationTextActivityItemProvider
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerLinkMetadata:(id)metadata;
- (id)activityViewControllerPlaceholderItem:(id)item;
- (id)supportedActivityTypes;
- (id)textForActivityType:(id)type;
@end

@implementation AEAnnotationTextActivityItemProvider

- (id)supportedActivityTypes
{
  v4[0] = UIActivityTypeMessage;
  v4[1] = @"com.apple.share.Messages.window";
  v4[2] = UIActivityTypeCopyToPasteboard;
  v4[3] = UIActivityTypeSaveToNotes;
  v4[4] = @"com.apple.Notes.SharingExtension";
  v4[5] = UIActivityTypeCreateReminder;
  v2 = [NSArray arrayWithObjects:v4 count:6];

  return v2;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  v3 = objc_opt_class();

  return NSStringFromClass(v3);
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  typeCopy = type;
  v6 = [(AEAssetActivityItemProviderSource *)self supportsActivityType:typeCopy];
  if (v6)
  {
    if ([typeCopy isEqualToString:UIActivityTypeCopyToPasteboard] || (objc_msgSend(typeCopy, "isEqualToString:", UIActivityTypeCreateReminder) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", UIActivityTypeSaveToNotes) & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", @"com.apple.Notes.SharingExtension"))
    {
      v7 = [(AEAnnotationTextActivityItemProvider *)self textForActivityType:typeCopy];
      goto LABEL_10;
    }

    annotations = [(AEAnnotationActivityItemProviderSource *)self annotations];
    v13 = [annotations objectAtIndexedSubscript:0];

    propertyProvider = [(AEAssetActivityItemProviderSource *)self propertyProvider];
    if (![propertyProvider isStoreAsset] || (objc_msgSend(v13, "annotationHasNote") & 1) != 0)
    {

LABEL_16:
      v7 = [(AEAnnotationTextActivityItemProvider *)self textForActivityType:typeCopy];
LABEL_17:

      goto LABEL_10;
    }

    if ([typeCopy isEqualToString:UIActivityTypeMessage])
    {
    }

    else
    {
      v15 = [typeCopy isEqualToString:@"com.apple.share.Messages.window"];

      if ((v15 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    _generateLinkMetadata = [(AEAnnotationActivityItemProviderSource *)self _generateLinkMetadata];
    v7 = [_generateLinkMetadata URL];

    goto LABEL_17;
  }

  v8 = AESharingLog(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v17 = 138412546;
    v18 = v10;
    v19 = 2112;
    v20 = typeCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%@ returning nil for activity:%@", &v17, 0x16u);
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (id)textForActivityType:(id)type
{
  typeCopy = type;
  text = [(AEAnnotationActivityItemProviderSource *)self text];
  if ([text tokenCountWithEnumerationOptions:3 maxTokenCount:-1 outLimitLength:0] >= 4)
  {
    stringByEnclosingInQuotes = [text stringByEnclosingInQuotes];
    annotations = [(AEAnnotationActivityItemProviderSource *)self annotations];
    firstObject = [annotations firstObject];

    v44 = firstObject;
    annotationNote = [firstObject annotationNote];
    v9 = [annotationNote length];
    if (v9)
    {
      v10 = [stringByEnclosingInQuotes stringByAppendingFormat:@"\n\n%@", annotationNote];

      stringByEnclosingInQuotes = v10;
    }

    v11 = IMCommonCoreBundle(v9);
    v12 = [v11 localizedStringForKey:@"Excerpt From" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

    v14 = IMCommonCoreBundle(v13);
    v15 = [v14 localizedStringForKey:@"This material may be protected by copyright." value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

    if ([typeCopy isEqualToString:UIActivityTypeCopyToPasteboard])
    {
      v42 = v12;
      citation = +[NSString string];
      propertyProvider = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      title = [propertyProvider title];

      if ([title length])
      {
        v19 = [citation stringByAppendingFormat:@"\n%@", title];

        citation = v19;
      }

      propertyProvider2 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      author = [propertyProvider2 author];

      if ([author length])
      {
        v22 = [citation stringByAppendingFormat:@"\n%@", author];

        citation = v22;
      }

      propertyProvider3 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      storeURLPreferShort = [propertyProvider3 storeURLPreferShort];

      if (storeURLPreferShort)
      {
        absoluteString = [storeURLPreferShort absoluteString];
        [citation stringByAppendingFormat:@"\n%@", absoluteString];
        v26 = author;
        v27 = v15;
        v28 = stringByEnclosingInQuotes;
        v30 = v29 = typeCopy;

        citation = v30;
        typeCopy = v29;
        stringByEnclosingInQuotes = v28;
        v15 = v27;
        author = v26;
      }

      v12 = v42;
      v31 = [NSString stringWithFormat:@"%@\n\n%@%@\n%@", stringByEnclosingInQuotes, v42, citation, v15];
    }

    else
    {
      citation = [(AEAssetActivityItemProviderSource *)self citation];
      storeURLPreferShort = [NSString stringWithFormat:@"%@\n\n%@: %@\n%@", stringByEnclosingInQuotes, v12, citation, v15];

      title = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      if (![title isStoreAsset])
      {
        goto LABEL_22;
      }

      v43 = v15;
      v32 = [typeCopy isEqualToString:@"com.apple.share.Messages.window"];

      if (v32)
      {
        v15 = v43;
LABEL_23:

        text = storeURLPreferShort;
        goto LABEL_24;
      }

      propertyProvider4 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      storeURLPreferShort2 = [propertyProvider4 storeURLPreferShort];
      title = [storeURLPreferShort2 absoluteString];

      if (!title)
      {
        v15 = v43;
        goto LABEL_22;
      }

      propertyProvider5 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      assetType = [propertyProvider5 assetType];

      v38 = IMCommonCoreBundle(v37);
      v39 = v38;
      if (assetType == &dword_4 + 2)
      {
        v40 = @"Check out this audiobook on Apple Books:";
      }

      else
      {
        v40 = @"Check out this book on Apple Books:";
      }

      author = [v38 localizedStringForKey:v40 value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

      v31 = [storeURLPreferShort stringByAppendingFormat:@"\n\n%@ %@", author, title];
      v15 = v43;
    }

    storeURLPreferShort = v31;
LABEL_22:

    goto LABEL_23;
  }

LABEL_24:

  return text;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    _generateLinkMetadata = [(AEAnnotationActivityItemProviderSource *)self _generateLinkMetadata];
  }

  else
  {
    _generateLinkMetadata = 0;
  }

  return _generateLinkMetadata;
}

@end