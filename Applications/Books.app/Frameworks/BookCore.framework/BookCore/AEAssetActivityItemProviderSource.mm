@interface AEAssetActivityItemProviderSource
+ (id)activityItemProviderWithPropertySource:(id)source;
+ (id)citationWithPropertyProvider:(id)provider storeURL:(id)l pageRange:(_NSRange)range;
- (AEAssetActivityItemProviderSource)initWithPropertySource:(id)source;
- (BOOL)supportsActivityType:(id)type;
- (id)HTMLGenerator:(id)generator citationForStoreURL:(id)l;
- (id)assetCoverForHTMLGenerator:(id)generator;
- (id)citation;
- (id)storeURLForHTMLGenerator:(id)generator;
- (id)tellAFriendBaseURLForHTMLGenerator:(id)generator;
- (void)populateHTMLGenerator:(id)generator;
@end

@implementation AEAssetActivityItemProviderSource

+ (id)activityItemProviderWithPropertySource:(id)source
{
  sourceCopy = source;
  v5 = [[self alloc] initWithPropertySource:sourceCopy];

  return v5;
}

- (AEAssetActivityItemProviderSource)initWithPropertySource:(id)source
{
  sourceCopy = source;
  v5 = [(AEAssetActivityItemProviderSource *)self init];
  if (v5)
  {
    v6 = [[AEAssetActivityPropertyProvider alloc] initWithPropertySource:sourceCopy];
    propertyProvider = v5->_propertyProvider;
    v5->_propertyProvider = v6;
  }

  return v5;
}

- (BOOL)supportsActivityType:(id)type
{
  typeCopy = type;
  supportedActivityTypes = [(AEAssetActivityItemProviderSource *)self supportedActivityTypes];
  v6 = [supportedActivityTypes containsObject:typeCopy];

  return v6;
}

- (void)populateHTMLGenerator:(id)generator
{
  generatorCopy = generator;
  [generatorCopy setDataSource:self];
  propertyProvider = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  if ([propertyProvider isStoreAsset])
  {
    propertyProvider2 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
    storeID = [propertyProvider2 storeID];
    [generatorCopy setStoreId:storeID];
  }

  else
  {
    [generatorCopy setStoreId:0];
  }

  propertyProvider3 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  epubID = [propertyProvider3 epubID];
  [generatorCopy setEpubId:epubID];

  propertyProvider4 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  title = [propertyProvider4 title];
  [generatorCopy setTitle:title];

  propertyProvider5 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  author = [propertyProvider5 author];
  [generatorCopy setAuthor:author];

  propertyProvider6 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  publisherLocation = [propertyProvider6 publisherLocation];
  [generatorCopy setPublisherLocation:publisherLocation];

  propertyProvider7 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  publisherName = [propertyProvider7 publisherName];
  [generatorCopy setPublisherName:publisherName];

  propertyProvider8 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  publisherYear = [propertyProvider8 publisherYear];
  [generatorCopy setPublisherYear:publisherYear];

  propertyProvider9 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  [generatorCopy setContentProtected:{objc_msgSend(propertyProvider9, "contentProtected")}];

  propertyProvider10 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  genre = [propertyProvider10 genre];
  [generatorCopy setGenre:genre];

  propertyProvider11 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  readingDirection = [propertyProvider11 readingDirection];
  [generatorCopy setReadingDirection:readingDirection];
}

+ (id)citationWithPropertyProvider:(id)provider storeURL:(id)l pageRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  providerCopy = provider;
  lCopy = l;
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_7E69C;
  v62[3] = &unk_2CB1A0;
  v8 = objc_alloc_init(NSMutableArray);
  v63 = v8;
  v9 = objc_retainBlock(v62);
  author = [providerCopy author];
  v59 = v8;
  if ([author length])
  {
    v11 = +[NSCharacterSet punctuationCharacterSet];
    v12 = [v11 characterIsMember:{objc_msgSend(author, "characterAtIndex:", objc_msgSend(author, "length") - 1)}];

    if ((v12 & 1) == 0)
    {
      v13 = objc_alloc_init(NSMutableArray);
      v14 = [author length];
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_7E778;
      v60[3] = &unk_2CB1C8;
      v15 = v13;
      v61 = v15;
      [author enumerateSubstringsInRange:0 options:v14 usingBlock:{3, v60}];
      if ([v15 count] == &dword_0 + 2)
      {
        v16 = IMCommonCoreBundle(2);
        v17 = [v16 localizedStringForKey:@"%@ value:%@" table:{&stru_2D2930, @"BCCommonCoreLocalizable"}];
        v18 = [v15 objectAtIndex:1];
        [v15 objectAtIndex:0];
        v20 = v19 = lCopy;
        v21 = [NSString stringWithFormat:v17, v18, v20];

        lCopy = v19;
        v8 = v59;

        author = v21;
      }
    }

    (v9[2])(v9, author);
  }

  title = [providerCopy title];
  if ([title length])
  {
    v23 = +[NSCharacterSet whitespaceCharacterSet];
    v24 = [title stringByTrimmingCharactersInSet:v23];

    if (([v24 hasSuffix:@"."] & 1) == 0)
    {
      v25 = [v24 stringByAppendingString:@"."];

      v24 = v25;
    }

    if (lCopy)
    {
      v26 = [NSString stringWithFormat:@"<a href=%@>%@</a>", lCopy, v24];

      v24 = v26;
    }

    stringByEnclosingInQuotes = [v24 stringByEnclosingInQuotes];

    v28 = [stringByEnclosingInQuotes stringByAppendingString:@" "];

    [v8 addObject:v28];
  }

  v54 = title;
  v55 = author;
  v56 = lCopy;
  version = [providerCopy version];
  v30 = [version length];
  if (v30)
  {
    v31 = IMCommonCoreBundle(v30);
    v32 = [v31 localizedStringForKey:@"v%@. " value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
    v33 = [NSString stringWithFormat:v32, version];

    [v8 addObject:v33];
    version = v33;
  }

  v34 = location;
  publisherLocation = [providerCopy publisherLocation];
  publisherName = [providerCopy publisherName];
  if ([publisherLocation length])
  {
    v37 = publisherLocation;
  }

  else
  {
    v37 = 0;
  }

  if ([publisherName length])
  {
    if ([v37 length])
    {
      v38 = [v37 stringByAppendingFormat:@", %@", publisherName];
    }

    else
    {
      v38 = publisherName;
    }

    v39 = v38;

    v37 = v39;
  }

  if ([v37 length])
  {
    publisherYear = [providerCopy publisherYear];
    if ([publisherYear length])
    {
      v41 = [v37 stringByAppendingFormat:@", %@", publisherYear];

      v37 = v41;
    }

    (v9[2])(v9, v37);
  }

  v58 = providerCopy;
  if (v34 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v42 = 0;
  }

  else
  {
    v43 = [NSString stringWithFormat:@"%lull", v34];
    v44 = v43;
    if (length)
    {
      v45 = [NSString stringWithFormat:@"%lull", v34 + length];
      v46 = [v44 commonPrefixWithString:v45 options:1];
      v47 = [v45 substringFromIndex:{objc_msgSend(v46, "length")}];
      v42 = [NSString stringWithFormat:@"%@-%@", v44, v47];
    }

    else
    {
      v42 = v43;
    }
  }

  v48 = [v42 length];
  if (v48)
  {
    v48 = (v9[2])(v9, v42);
  }

  v49 = IMCommonCoreBundle(v48);
  v50 = [v49 localizedStringForKey:@"Apple Books" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

  (v9[2])(v9, v50);
  v51 = [v59 componentsJoinedByString:&stru_2D2930];

  return v51;
}

- (id)citation
{
  v3 = objc_opt_class();
  propertyProvider = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  v5 = [v3 citationWithPropertyProvider:propertyProvider storeURL:0 pageRange:{0x7FFFFFFFFFFFFFFFLL, 0}];

  return v5;
}

- (id)assetCoverForHTMLGenerator:(id)generator
{
  propertyProvider = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  assetCover = [propertyProvider assetCover];

  return assetCover;
}

- (id)storeURLForHTMLGenerator:(id)generator
{
  propertyProvider = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  storeURL = [propertyProvider storeURL];

  return storeURL;
}

- (id)tellAFriendBaseURLForHTMLGenerator:(id)generator
{
  v3 = +[AEAssetEngine storeMgr];
  clientApplicationController = [v3 clientApplicationController];
  objc_opt_class();
  tellAFriendEmailBodyURLBase = [clientApplicationController tellAFriendEmailBodyURLBase];
  v6 = BUDynamicCast();

  return v6;
}

- (id)HTMLGenerator:(id)generator citationForStoreURL:(id)l
{
  lCopy = l;
  v6 = objc_opt_class();
  propertyProvider = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  v8 = [v6 citationWithPropertyProvider:propertyProvider storeURL:lCopy pageRange:{0x7FFFFFFFFFFFFFFFLL, 0}];

  v10 = IMCommonCoreBundle(v9);
  v11 = [v10 localizedStringForKey:@"This material may be protected by copyright." value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  v12 = [v8 stringByAppendingFormat:@"\n%@", v11];

  return v12;
}

@end