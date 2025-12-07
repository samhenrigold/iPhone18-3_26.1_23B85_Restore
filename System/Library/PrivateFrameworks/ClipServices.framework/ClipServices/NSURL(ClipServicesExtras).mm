@interface NSURL(ClipServicesExtras)
+ (id)cps_preIngestedURLWithBundleIdentifier:()ClipServicesExtras;
+ (id)cps_resolvedURLWithStoreIconURLString:()ClipServicesExtras iconSize:;
- (BOOL)cps_isDemoLink;
- (BOOL)cps_isFileURL;
- (BOOL)cps_isHTTPFamilyURL;
- (id)cps_domain;
- (id)cps_embeddedBundleIdentifierInDefaultLink;
- (id)cps_embeddedBundleIdentifierInDemoLink;
- (id)cps_embeddedItemID;
- (id)cps_fallbackBundleIdentifier;
- (id)cps_sanitizedURL;
@end

@implementation NSURL(ClipServicesExtras)

+ (id)cps_resolvedURLWithStoreIconURLString:()ClipServicesExtras iconSize:
{
  v19[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v18[0] = @"{w}";
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", a4];
    v19[0] = v6;
    v18[1] = @"{h}";
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", a4];
    v19[1] = v7;
    v18[2] = @"{f}";
    v18[3] = @"{c}";
    v19[2] = @"png";
    v19[3] = @"bb";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__1;
    v16 = __Block_byref_object_dispose__1;
    v17 = [v5 copy];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__NSURL_ClipServicesExtras__cps_resolvedURLWithStoreIconURLString_iconSize___block_invoke;
    v11[3] = &unk_278DCE228;
    v11[4] = &v12;
    [v8 enumerateKeysAndObjectsUsingBlock:v11];
    v9 = [MEMORY[0x277CBEBC0] URLWithString:v13[5]];
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)cps_preIngestedURLWithBundleIdentifier:()ClipServicesExtras
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", @"https://pre-ingested.apple.com/", a3];
  v5 = [v3 URLWithString:v4];

  return v5;
}

- (BOOL)cps_isHTTPFamilyURL
{
  scheme = [self scheme];
  if ([scheme caseInsensitiveCompare:@"https"])
  {
    scheme2 = [self scheme];
    v4 = [scheme2 caseInsensitiveCompare:@"http"] == 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)cps_isFileURL
{
  scheme = [self scheme];
  v2 = [scheme caseInsensitiveCompare:@"file"] == 0;

  return v2;
}

- (id)cps_domain
{
  v1 = [MEMORY[0x277CCACE0] componentsWithURL:self resolvingAgainstBaseURL:1];
  host = [v1 host];
  v3 = host;
  if (host)
  {
    if ([host rangeOfString:@"www." options:9] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = v3;
    }

    else
    {
      v4 = [v3 substringFromIndex:4];
    }

    v6 = v4;
    if ([v4 length])
    {
      lowercaseString = [v6 lowercaseString];
    }

    else
    {
      lowercaseString = 0;
    }
  }

  else
  {
    lowercaseString = 0;
  }

  return lowercaseString;
}

- (id)cps_fallbackBundleIdentifier
{
  cps_embeddedBundleIdentifierInDefaultLink = [self cps_embeddedBundleIdentifierInDefaultLink];
  if (!cps_embeddedBundleIdentifierInDefaultLink)
  {
    cps_embeddedBundleIdentifierInDefaultLink = [self cps_embeddedBundleIdentifierInDemoLink];
  }

  return cps_embeddedBundleIdentifierInDefaultLink;
}

- (id)cps_embeddedBundleIdentifierInDefaultLink
{
  v2 = [MEMORY[0x277CCACE0] componentsWithURL:self resolvingAgainstBaseURL:1];
  host = [v2 host];
  lowercaseString = [host lowercaseString];
  v5 = [lowercaseString isEqualToString:@"appclip.apple.com"];

  if (v5 && ([self lastPathComponent], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "caseInsensitiveCompare:", @"id"), v6, !v7))
  {
    queryItems = [v2 queryItems];
    v11 = queryItems;
    if (queryItems)
    {
      v12 = [queryItems objectAtIndexedSubscript:0];
      name = [v12 name];
      v14 = [name caseInsensitiveCompare:@"p"];

      v8 = 0;
      if (!v14)
      {
        value = [v12 value];
        stringByRemovingPercentEncoding = [value stringByRemovingPercentEncoding];

        v17 = [stringByRemovingPercentEncoding componentsSeparatedByString:@"."];
        if ([v17 count] >= 3)
        {
          whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          if ([stringByRemovingPercentEncoding rangeOfCharacterFromSet:whitespaceCharacterSet] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v8 = stringByRemovingPercentEncoding;
          }

          else
          {
            v8 = 0;
          }
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)cps_embeddedBundleIdentifierInDemoLink
{
  cps_embeddedItemID = [self cps_embeddedItemID];
  if (cps_embeddedItemID)
  {
    v3 = [MEMORY[0x277CCACE0] componentsWithURL:self resolvingAgainstBaseURL:1];
    queryItems = [v3 queryItems];
    v5 = queryItems;
    if (queryItems)
    {
      v6 = [queryItems objectAtIndexedSubscript:0];
      name = [v6 name];
      v8 = [name caseInsensitiveCompare:@"app-clip-bundle-id"];

      v9 = 0;
      if (!v8)
      {
        value = [v6 value];
        stringByRemovingPercentEncoding = [value stringByRemovingPercentEncoding];

        v12 = [stringByRemovingPercentEncoding componentsSeparatedByString:@"."];
        if ([v12 count] >= 3)
        {
          whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          if ([stringByRemovingPercentEncoding rangeOfCharacterFromSet:whitespaceCharacterSet] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v9 = stringByRemovingPercentEncoding;
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)cps_sanitizedURL
{
  v27[1] = *MEMORY[0x277D85DE8];
  cps_embeddedItemID = [self cps_embeddedItemID];
  if (!cps_embeddedItemID)
  {
    selfCopy2 = self;
    goto LABEL_14;
  }

  v3 = [MEMORY[0x277CCACE0] componentsWithURL:self resolvingAgainstBaseURL:1];
  pathComponents = [self pathComponents];
  string = [MEMORY[0x277CCAB68] string];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0x7FFFFFFFFFFFFFFFLL;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __45__NSURL_ClipServicesExtras__cps_sanitizedURL__block_invoke;
  v22[3] = &unk_278DCE250;
  v22[4] = &v23;
  [pathComponents enumerateObjectsUsingBlock:v22];
  v6 = v24[3];
  if (v6 == 2)
  {
    v7 = [pathComponents objectAtIndexedSubscript:1];
    v9 = [pathComponents objectAtIndexedSubscript:2];
    [string appendFormat:@"/%@/%@", v7, v9];

    goto LABEL_7;
  }

  if (v6 == 1)
  {
    v7 = [pathComponents objectAtIndexedSubscript:1];
    [string appendFormat:@"/%@", v7];
LABEL_7:
  }

  lastPathComponent = [self lastPathComponent];
  lowercaseString = [lastPathComponent lowercaseString];

  if ([lowercaseString containsString:@"id"])
  {
    [string appendFormat:@"/%@", lowercaseString];
    v12 = objc_alloc_init(MEMORY[0x277CCACE0]);
    scheme = [v3 scheme];
    [v12 setScheme:scheme];

    host = [v3 host];
    [v12 setHost:host];

    [v12 setPath:string];
    queryItems = [v3 queryItems];
    firstObject = [queryItems firstObject];

    name = [firstObject name];
    lowercaseString2 = [name lowercaseString];
    v19 = [lowercaseString2 isEqualToString:@"app-clip-bundle-id"];

    if (v19)
    {
      v27[0] = firstObject;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
      [v12 setQueryItems:v20];
    }

    selfCopy2 = [v12 URL];
  }

  else
  {
    selfCopy2 = self;
  }

  _Block_object_dispose(&v23, 8);
LABEL_14:

  return selfCopy2;
}

- (id)cps_embeddedItemID
{
  v2 = [MEMORY[0x277CCACE0] componentsWithURL:self resolvingAgainstBaseURL:1];
  host = [v2 host];
  lowercaseString = [host lowercaseString];
  v5 = [lowercaseString isEqualToString:@"apps.apple.com"];

  if (v5)
  {
    pathComponents = [self pathComponents];
    if ([pathComponents count] >= 2)
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0x7FFFFFFFFFFFFFFFLL;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __47__NSURL_ClipServicesExtras__cps_embeddedItemID__block_invoke;
      v12[3] = &unk_278DCE250;
      v12[4] = &v13;
      [pathComponents enumerateObjectsUsingBlock:v12];
      if ((v14[3] - 1) >= 2)
      {
        v7 = 0;
      }

      else
      {
        lastPathComponent = [self lastPathComponent];
        lowercaseString2 = [lastPathComponent lowercaseString];

        if ([lowercaseString2 containsString:@"id"])
        {
          v10 = [lowercaseString2 substringFromIndex:2];
          if ([v10 cps_looksLikeStoreItemIdentifier])
          {
            v7 = v10;
          }

          else
          {
            v7 = 0;
          }
        }

        else
        {
          v7 = 0;
        }
      }

      _Block_object_dispose(&v13, 8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)cps_isDemoLink
{
  cps_embeddedItemID = [self cps_embeddedItemID];
  v2 = cps_embeddedItemID != 0;

  return v2;
}

@end