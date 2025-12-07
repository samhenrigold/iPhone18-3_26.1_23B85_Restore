@interface NSURL
+ (BOOL)bc_BOOLFromResourceValue:(id)value;
+ (BOOL)bc_isDownloadedWithResourceValue:(id)value;
+ (BOOL)bc_isUbiquitousPromiseFromResourceDictionary:(id)dictionary;
+ (id)supportediBooksInternalURLSchemes;
+ (id)supportediBooksStoreURLSchemes;
+ (id)supportediBooksURLSchemes;
+ (void)bc_setIOPolicyForThreadScope:(int)scope type:(int)type forBlock:(id)block;
+ (void)coordinateReadingItemAtURL:(id)l options:(unint64_t)options error:(id *)error byAccessor:(id)accessor;
+ (void)coordinateWritingItemAtURL:(id)l options:(unint64_t)options error:(id *)error byAccessor:(id)accessor;
- (BOOL)_actionMatchesString:(id)string;
- (BOOL)_checkForBookStoreURLUsingRegularExpressions;
- (BOOL)_validateWithSheetInfo:(id)info;
- (BOOL)bc_hasLegacyBookStoreScheme;
- (BOOL)bc_isBookStoreAddToWantToReadURL;
- (BOOL)bc_isBookStoreBuyNowURL;
- (BOOL)bc_isBookStoreStartListeningURL;
- (BOOL)bc_isBookStoreStartReadingURL;
- (BOOL)bc_isBookStoreViewInStoreURL;
- (BOOL)bc_isDownloaded;
- (BOOL)bc_isDownloading;
- (BOOL)bc_isUbiquitous;
- (BOOL)bc_isUbiquitousPromise;
- (BOOL)hasUnresolvedConflicts;
- (BOOL)isStoreBook;
- (BOOL)isStoreURL;
- (BOOL)isStoreURL_29693365;
- (BOOL)isUploaded;
- (BOOL)isUploading;
- (id)_lastModDateFormatter;
- (id)_valueForQueryItemWithName:(id)name;
- (id)bc_pathWithoutPrecedingSlash;
- (void)bc_isBookStoreProductURLWithCompletion:(id)completion;
- (void)bc_isBookStoreURLWithCompletion:(id)completion;
- (void)bc_isStoreProductURLWithCompletion:(id)completion;
- (void)bc_isStoreURLWithCompletion:(id)completion;
@end

@implementation NSURL

- (BOOL)bc_hasLegacyBookStoreScheme
{
  scheme = [(NSURL *)self scheme];
  if ([scheme isEqualToString:@"itms-books"])
  {
    v4 = 1;
  }

  else
  {
    scheme2 = [(NSURL *)self scheme];
    v4 = [scheme2 isEqualToString:@"itms-bookss"];
  }

  return v4;
}

- (BOOL)bc_isBookStoreAddToWantToReadURL
{
  bc_hasLegacyBookStoreScheme = [(NSURL *)self bc_hasLegacyBookStoreScheme];
  if (bc_hasLegacyBookStoreScheme)
  {

    LOBYTE(bc_hasLegacyBookStoreScheme) = [(NSURL *)self _actionMatchesString:@"add-to-want-to-read"];
  }

  return bc_hasLegacyBookStoreScheme;
}

- (BOOL)bc_isBookStoreBuyNowURL
{
  bc_hasLegacyBookStoreScheme = [(NSURL *)self bc_hasLegacyBookStoreScheme];
  if (bc_hasLegacyBookStoreScheme)
  {

    LOBYTE(bc_hasLegacyBookStoreScheme) = [(NSURL *)self _actionMatchesString:@"buy-now"];
  }

  return bc_hasLegacyBookStoreScheme;
}

- (BOOL)bc_isBookStoreViewInStoreURL
{
  bc_hasLegacyBookStoreScheme = [(NSURL *)self bc_hasLegacyBookStoreScheme];
  if (bc_hasLegacyBookStoreScheme)
  {

    LOBYTE(bc_hasLegacyBookStoreScheme) = [(NSURL *)self _actionMatchesString:@"view-in-store"];
  }

  return bc_hasLegacyBookStoreScheme;
}

- (BOOL)bc_isBookStoreStartReadingURL
{
  bc_hasLegacyBookStoreScheme = [(NSURL *)self bc_hasLegacyBookStoreScheme];
  if (bc_hasLegacyBookStoreScheme)
  {

    LOBYTE(bc_hasLegacyBookStoreScheme) = [(NSURL *)self _actionMatchesString:@"start-reading"];
  }

  return bc_hasLegacyBookStoreScheme;
}

- (BOOL)bc_isBookStoreStartListeningURL
{
  bc_hasLegacyBookStoreScheme = [(NSURL *)self bc_hasLegacyBookStoreScheme];
  if (bc_hasLegacyBookStoreScheme)
  {

    LOBYTE(bc_hasLegacyBookStoreScheme) = [(NSURL *)self _actionMatchesString:@"start-listening"];
  }

  return bc_hasLegacyBookStoreScheme;
}

+ (id)supportediBooksURLSchemes
{
  if (qword_342170 != -1)
  {
    sub_1E5C30();
  }

  v3 = qword_342168;
  supportediBooksStoreURLSchemes = [self supportediBooksStoreURLSchemes];
  v5 = [v3 setByAddingObjectsFromSet:supportediBooksStoreURLSchemes];

  return v5;
}

+ (id)supportediBooksInternalURLSchemes
{
  if (qword_342180 != -1)
  {
    sub_1E5C44();
  }

  v3 = qword_342178;
  supportediBooksStoreURLSchemes = [self supportediBooksStoreURLSchemes];
  v5 = [v3 setByAddingObjectsFromSet:supportediBooksStoreURLSchemes];

  return v5;
}

+ (id)supportediBooksStoreURLSchemes
{
  if (qword_342190 != -1)
  {
    sub_1E5C58();
  }

  v3 = qword_342188;

  return v3;
}

- (BOOL)_checkForBookStoreURLUsingRegularExpressions
{
  if (qword_3421A8 != -1)
  {
    sub_1E5C6C();
  }

  host = [(NSURL *)self host];
  v4 = host;
  if (!qword_342198 || ([host bc_hasMatchInRegexPatterns:?] ? (v5 = qword_3421A0 == 0) : (v5 = 1), v5))
  {
    v6 = 0;
  }

  else
  {
    v7 = [[NSURLComponents alloc] initWithURL:self resolvingAgainstBaseURL:0];
    rangeOfPath = [v7 rangeOfPath];
    if (rangeOfPath == 0x7FFFFFFFFFFFFFFFLL)
    {
      path = [(NSURL *)self path];
    }

    else
    {
      v10 = rangeOfPath;
      string = [v7 string];
      path = [string substringFromIndex:v10];
    }

    v6 = [path bc_hasMatchInRegexPatterns:qword_3421A0];
  }

  return v6;
}

- (void)bc_isBookStoreProductURLWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[BUBag defaultBag];
  ixStoreSheetBooks = [v5 ixStoreSheetBooks];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_355C8;
  v8[3] = &unk_2C9158;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [ixStoreSheetBooks jsa_valueWithCompletion:v8];
}

- (void)bc_isBookStoreURLWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    host = [(NSURL *)self host];
    if ([host length])
    {
      path = [(NSURL *)self path];
      v7 = [path length];

      if (v7)
      {
        v8 = dispatch_group_create();
        v38[0] = 0;
        v38[1] = v38;
        v38[2] = 0x3032000000;
        v38[3] = sub_35AB0;
        v38[4] = sub_35AC0;
        v39 = 0;
        v36[0] = 0;
        v36[1] = v36;
        v36[2] = 0x3032000000;
        v36[3] = sub_35AB0;
        v36[4] = sub_35AC0;
        v37 = 0;
        v34[0] = 0;
        v34[1] = v34;
        v34[2] = 0x3032000000;
        v34[3] = sub_35AB0;
        v34[4] = sub_35AC0;
        v35 = 0;
        dispatch_group_enter(v8);
        v9 = +[BUBag defaultBag];
        p2LaunchEbookstoreHostPatterns = [v9 p2LaunchEbookstoreHostPatterns];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_35AC8;
        v31[3] = &unk_2C9180;
        v33 = v38;
        v11 = v8;
        v32 = v11;
        [p2LaunchEbookstoreHostPatterns jsa_valueWithCompletion:v31];

        dispatch_group_enter(v11);
        v12 = +[BUBag defaultBag];
        p2LaunchEbookstorePathPatterns = [v12 p2LaunchEbookstorePathPatterns];
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_35B28;
        v28[3] = &unk_2C9180;
        v30 = v36;
        v14 = v11;
        v29 = v14;
        [p2LaunchEbookstorePathPatterns jsa_valueWithCompletion:v28];

        dispatch_group_enter(v14);
        v15 = +[BUBag defaultBag];
        p2LaunchAudioBookStorePathPatterns = [v15 p2LaunchAudioBookStorePathPatterns];
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_35B88;
        v25[3] = &unk_2C9180;
        v27 = v34;
        v17 = v14;
        v26 = v17;
        [p2LaunchAudioBookStorePathPatterns jsa_valueWithCompletion:v25];

        v18 = dispatch_get_global_queue(21, 0);
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_35BE8;
        v20[3] = &unk_2C91A8;
        v20[4] = self;
        v22 = v38;
        v23 = v36;
        v24 = v34;
        v21 = completionCopy;
        dispatch_group_notify(v17, v18, v20);

        _Block_object_dispose(v34, 8);
        _Block_object_dispose(v36, 8);

        _Block_object_dispose(v38, 8);
LABEL_7:

        goto LABEL_8;
      }
    }

    else
    {
    }

    v19 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_35A9C;
    block[3] = &unk_2C8398;
    v41 = completionCopy;
    dispatch_async(v19, block);

    v17 = v41;
    goto LABEL_7;
  }

LABEL_8:
}

- (void)bc_isStoreProductURLWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[BUBag defaultBag];
  ixStoreSheet = [v5 ixStoreSheet];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_35DD4;
  v8[3] = &unk_2C91D0;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [ixStoreSheet jsa_valueWithCompletion:v8];
}

- (void)bc_isStoreURLWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[BUBag defaultBag];
  trustedDomains = [v5 trustedDomains];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_35F54;
  v8[3] = &unk_2C91F8;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [trustedDomains jsa_valueWithCompletion:v8];
}

- (BOOL)isStoreURL
{
  if ([(NSURL *)self _checkForBookStoreURLUsingRegularExpressions])
  {
    return 1;
  }

  host = [(NSURL *)self host];
  if (host)
  {
    host2 = [(NSURL *)self host];
    if ([host2 caseInsensitiveCompare:@"itunes.apple.com"])
    {
      host3 = [(NSURL *)self host];
      if ([host3 caseInsensitiveCompare:@"buy.itunes.apple.com"])
      {
        host4 = [(NSURL *)self host];
        if ([host4 caseInsensitiveCompare:@"finance-app.itunes.apple.com"])
        {
          host5 = [(NSURL *)self host];
          if ([host5 caseInsensitiveCompare:@"itun.es"])
          {
            host6 = [(NSURL *)self host];
            v3 = [host6 caseInsensitiveCompare:@"storepreview.apple.com"] == 0;
          }

          else
          {
            v3 = 1;
          }
        }

        else
        {
          v3 = 1;
        }
      }

      else
      {
        v3 = 1;
      }
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isStoreURL_29693365
{
  if ([(NSURL *)self _checkForBookStoreURLUsingRegularExpressions])
  {
    return 1;
  }

  host = [(NSURL *)self host];
  lowercaseString = [host lowercaseString];

  if (lowercaseString)
  {
    if ([lowercaseString hasSuffix:@"itunes.apple.com"] & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"itun.es"))
    {
      v3 = 1;
    }

    else
    {
      v3 = [lowercaseString isEqualToString:@"itunes.com"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isStoreBook
{
  if (![(NSURL *)self isStoreURL])
  {
    return 0;
  }

  path = [(NSURL *)self path];
  lowercaseString = [path lowercaseString];
  if ([lowercaseString containsSubstring:@"/book/"])
  {
    v5 = 1;
  }

  else
  {
    path2 = [(NSURL *)self path];
    lowercaseString2 = [path2 lowercaseString];
    if ([lowercaseString2 containsSubstring:@"/books/isbn"])
    {
      v5 = 1;
    }

    else
    {
      scheme = [(NSURL *)self scheme];
      v5 = [scheme hasPrefix:@"itms-books"];
    }
  }

  return v5;
}

- (id)bc_pathWithoutPrecedingSlash
{
  path = [(NSURL *)self path];
  if ([path hasPrefix:@"/"])
  {
    do
    {
      v3 = [path substringFromIndex:{objc_msgSend(@"/", "length")}];

      path = v3;
    }

    while (([v3 hasPrefix:@"/"] & 1) != 0);
  }

  else
  {
    v3 = path;
  }

  return v3;
}

- (id)_lastModDateFormatter
{
  v2 = +[NSThread currentThread];
  threadDictionary = [v2 threadDictionary];
  v4 = [threadDictionary objectForKey:@"_lastModDateFormatter"];

  if (!v4)
  {
    v4 = objc_alloc_init(NSDateFormatter);
    [v4 setDateFormat:@"EEE', ' dd MMM yyyy HH':'mm':'ss 'GMT'"];
    v5 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
    [v4 setLocale:v5];

    v6 = [NSTimeZone timeZoneWithAbbreviation:@"GMT"];
    [v4 setTimeZone:v6];

    v7 = +[NSThread currentThread];
    threadDictionary2 = [v7 threadDictionary];
    [threadDictionary2 setObject:v4 forKey:@"_lastModDateFormatter"];
  }

  return v4;
}

- (BOOL)_actionMatchesString:(id)string
{
  stringCopy = string;
  v5 = [(NSURL *)self _valueForQueryItemWithName:@"action"];
  v6 = [stringCopy isEqualToString:v5];

  return v6;
}

- (id)_valueForQueryItemWithName:(id)name
{
  nameCopy = name;
  bu_dictionaryForQueryItems = [(NSURL *)self bu_dictionaryForQueryItems];
  v6 = [bu_dictionaryForQueryItems objectForKeyedSubscript:nameCopy];

  return v6;
}

- (BOOL)_validateWithSheetInfo:(id)info
{
  infoCopy = info;
  objc_opt_class();
  v5 = [infoCopy objectForKey:@"host-patterns"];
  v6 = BUDynamicCast();

  if (v6 && (-[NSURL host](self, "host"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 bc_hasMatchInRegexPatterns:v6], v7, !v8))
  {
    v17 = 0;
  }

  else
  {
    objc_opt_class();
    v9 = [infoCopy objectForKey:@"path-patterns"];
    v10 = BUDynamicCast();

    if (v10)
    {
      path = [(NSURL *)self path];
      v12 = [path mutableCopy];

      if (v12)
      {
        query = [(NSURL *)self query];

        if (query)
        {
          query2 = [(NSURL *)self query];
          [v12 appendFormat:@"?%@", query2];
        }

        fragment = [(NSURL *)self fragment];

        if (fragment)
        {
          fragment2 = [(NSURL *)self fragment];
          [v12 appendFormat:@"#%@", fragment2];
        }

        v17 = [v12 bc_hasMatchInRegexPatterns:v10];
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 1;
    }
  }

  return v17;
}

- (BOOL)bc_isUbiquitous
{
  v9 = 0;
  v8 = 0;
  [(NSURL *)self getResourceValue:&v9 forKey:NSURLIsUbiquitousItemKey error:&v8];
  v2 = v9;
  v3 = v8;
  v4 = v3;
  if (v3)
  {
    v5 = BCIMLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1E9F8C();
    }

    v6 = 0;
  }

  else
  {
    v6 = [objc_opt_class() bc_BOOLFromResourceValue:v2];
  }

  return v6;
}

- (BOOL)hasUnresolvedConflicts
{
  v3 = 0;
  [(NSURL *)self getResourceValue:&v3 forKey:NSURLUbiquitousItemHasUnresolvedConflictsKey error:0];
  return [v3 BOOLValue];
}

- (BOOL)bc_isDownloaded
{
  v9 = 0;
  v8 = 0;
  [(NSURL *)self getResourceValue:&v9 forKey:NSURLUbiquitousItemDownloadingStatusKey error:&v8];
  v2 = v9;
  v3 = v8;
  v4 = v3;
  if (v3)
  {
    v5 = BCIMLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1E9FF4();
    }

    v6 = 0;
  }

  else
  {
    v6 = [objc_opt_class() bc_isDownloadedWithResourceValue:v2];
  }

  return v6;
}

- (BOOL)bc_isDownloading
{
  v9 = 0;
  v8 = 0;
  [(NSURL *)self getResourceValue:&v9 forKey:NSURLUbiquitousItemIsDownloadingKey error:&v8];
  v2 = v9;
  v3 = v8;
  v4 = v3;
  if (v3)
  {
    v5 = BCIMLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1EA05C();
    }

    v6 = 0;
  }

  else
  {
    v6 = [objc_opt_class() bc_BOOLFromResourceValue:v2];
  }

  return v6;
}

- (BOOL)isUploaded
{
  v3 = 0;
  [(NSURL *)self getResourceValue:&v3 forKey:NSURLUbiquitousItemIsUploadedKey error:0];
  return [v3 BOOLValue];
}

- (BOOL)isUploading
{
  v3 = 0;
  [(NSURL *)self getResourceValue:&v3 forKey:NSURLUbiquitousItemIsUploadingKey error:0];
  return [v3 BOOLValue];
}

- (BOOL)bc_isUbiquitousPromise
{
  v11[0] = NSURLIsUbiquitousItemKey;
  v11[1] = NSURLUbiquitousItemDownloadingStatusKey;
  v11[2] = NSURLUbiquitousItemIsDownloadingKey;
  v3 = [NSArray arrayWithObjects:v11 count:3];
  v10 = 0;
  v4 = [(NSURL *)self resourceValuesForKeys:v3 error:&v10];
  v5 = v10;

  if (v5)
  {
    v7 = BCIMLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1EA0C4();
    }

    v8 = 0;
  }

  else
  {
    v8 = [objc_opt_class() bc_isUbiquitousPromiseFromResourceDictionary:v4];
  }

  return v8;
}

+ (BOOL)bc_isUbiquitousPromiseFromResourceDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:NSURLIsUbiquitousItemKey];
  v6 = [self bc_BOOLFromResourceValue:v5];

  v7 = [dictionaryCopy objectForKeyedSubscript:NSURLUbiquitousItemIsDownloadingKey];
  v8 = [self bc_BOOLFromResourceValue:v7];

  v9 = [dictionaryCopy objectForKeyedSubscript:NSURLUbiquitousItemDownloadingStatusKey];

  LOBYTE(self) = [self bc_isDownloadedWithResourceValue:v9];
  return v6 & ((v8 | self) ^ 1);
}

+ (BOOL)bc_BOOLFromResourceValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  v4 = BUDynamicCast();

  LOBYTE(valueCopy) = [v4 BOOLValue];
  return valueCopy;
}

+ (BOOL)bc_isDownloadedWithResourceValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  v4 = BUDynamicCast();

  if ([v4 isEqualToString:NSURLUbiquitousItemDownloadingStatusCurrent])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:NSURLUbiquitousItemDownloadingStatusDownloaded];
  }

  return v5;
}

+ (void)bc_setIOPolicyForThreadScope:(int)scope type:(int)type forBlock:(id)block
{
  blockCopy = block;
  v8 = getiopolicy_np(type, 1);
  if (v8 == -1)
  {
    v16 = BKLibraryDataSourceUbiquityLog(v8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1EA1FC();
    }
  }

  else
  {
    v9 = v8;
    if (v8 != scope)
    {
      v10 = setiopolicy_np(type, 1, scope);
      if (v10)
      {
        v11 = BKLibraryDataSourceUbiquityLog(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1EA12C();
        }
      }

      v12 = objc_retainBlock(blockCopy);
      v13 = v12;
      if (v12)
      {
        (*(v12 + 2))(v12);
      }

      if ((v9 & 0x80000000) == 0)
      {
        v14 = setiopolicy_np(type, 1, v9);
        if (v14)
        {
          v15 = BKLibraryDataSourceUbiquityLog(v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_1EA194();
          }
        }
      }

      goto LABEL_20;
    }
  }

  v17 = objc_retainBlock(blockCopy);
  v18 = v17;
  if (v17)
  {
    (*(v17 + 2))(v17);
  }

LABEL_20:
}

+ (void)coordinateReadingItemAtURL:(id)l options:(unint64_t)options error:(id *)error byAccessor:(id)accessor
{
  lCopy = l;
  accessorCopy = accessor;
  v11 = +[NSThread isMainThread];
  if (v11)
  {
    v12 = BCIMLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v16 = 136315650;
      v17 = "+[NSURL(IMCoordinated) coordinateReadingItemAtURL:options:error:byAccessor:]";
      v18 = 2080;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/Utilities/NSURL+BCCoordinated.m";
      v20 = 1024;
      v21 = 24;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "%s %s:%d", &v16, 0x1Cu);
    }

    v14 = BCIMLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = lCopy;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "@This should not be called from the foreground thread. [URL: %@]", &v16, 0xCu);
    }
  }

  v15 = objc_opt_new();
  [v15 coordinateReadingItemAtURL:lCopy options:options error:error byAccessor:accessorCopy];
}

+ (void)coordinateWritingItemAtURL:(id)l options:(unint64_t)options error:(id *)error byAccessor:(id)accessor
{
  accessorCopy = accessor;
  lCopy = l;
  v11 = objc_opt_new();
  [v11 coordinateWritingItemAtURL:lCopy options:options error:error byAccessor:accessorCopy];
}

@end