@interface BCSURLPatternMatcher
- (BOOL)isAnyMatchFoundForPathPattern:(id)pattern countOfPathComponents:(int64_t *)components error:(id *)error;
- (BOOL)isValidDomainForURL:(id)l domainBundleIDPatterns:(id)patterns;
- (id)dictionaryFromQueryString:(id)string orderedKeys:(id *)keys;
- (id)extractedPathForAnyMatchUsingScanner:(id)scanner delimiter:(id)delimiter extractedPath:(id)path countOfPathComponentsToMatch:(unint64_t)match;
- (id)extractedPathForExactMatchUsingScanner:(id)scanner delimiter:(id)delimiter extractedPath:(id)path patternPathComponent:(id)component;
- (id)extractedQueryByAddingKey:(id)key value:(id)value toExtractedQuery:(id)query;
- (id)extractedURLForOriginalURL:(id)l originalURLPathComponents:(id)components extractedPath:(id)path extractedQuery:(id)query;
- (id)matchPattern:(id)pattern withURL:(id)l forBundleID:(id)d expirationDate:(id)date error:(id *)error;
- (id)orderedKeysForPatternQuery:(id)query originalURLQuery:(id)lQuery orderedOriginalURLQueryKeys:(id)keys;
@end

@implementation BCSURLPatternMatcher

- (BOOL)isValidDomainForURL:(id)l domainBundleIDPatterns:(id)patterns
{
  lCopy = l;
  patternsCopy = patterns;
  v7 = patternsCopy;
  if (lCopy && ([patternsCopy domain], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v9) && (objc_msgSend(v7, "bundleIdPatterns"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v11))
  {
    v12 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:1];
    host = [v12 host];
    domain = [v7 domain];
    v15 = [host isEqualToString:domain];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)matchPattern:(id)pattern withURL:(id)l forBundleID:(id)d expirationDate:(id)date error:(id *)error
{
  v85 = *MEMORY[0x277D85DE8];
  patternCopy = pattern;
  lCopy = l;
  dCopy = d;
  dateCopy = date;
  if (patternCopy && lCopy)
  {
    path = [patternCopy path];
    query = [patternCopy query];
    v18 = query;
    if (!path && ![query length])
    {
      v36 = ABSLogCommon();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[BCSURLPatternMatcher matchPattern:withURL:forBundleID:expirationDate:error:]";
        _os_log_impl(&dword_242072000, v36, OS_LOG_TYPE_DEFAULT, "%s No match since no path or query pattern provided", buf, 0xCu);
      }

      v35 = 0;
      goto LABEL_66;
    }

    v19 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:1];
    percentEncodedPath = [v19 percentEncodedPath];
    percentEncodedQuery = [v19 percentEncodedQuery];
    v68 = percentEncodedPath;
    if ([path length])
    {
      errorCopy = error;
      v21 = &stru_28544C2A0;
      if (*[path UTF8String]!= 47)
      {
        v35 = 0;
        v72 = &stru_28544C2A0;
        goto LABEL_65;
      }

      v64 = v18;
      v66 = v19;
      v62 = dateCopy;
      v58 = dCopy;
      if (*[percentEncodedPath UTF8String] == 47)
      {
        v21 = @"/";
      }

      v22 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:?];
      v60 = path;
      v23 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:path];
      [v23 setCharactersToBeSkipped:v22];
      v24 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:percentEncodedPath];
      [v24 setCharactersToBeSkipped:v22];
      v82 = 0;
      v25 = [v23 scanUpToCharactersFromSet:v22 intoString:&v82];
      v26 = v82;
      if (v25)
      {
        v74 = 0;
        v75 = 0;
        v73 = 0;
        while (1)
        {
          *buf = 0;
          v81 = 0;
          v27 = [(BCSURLPatternMatcher *)self isAnyMatchFoundForPathPattern:v26 countOfPathComponents:buf error:&v81];
          v28 = v81;
          v29 = v28;
          if (v28)
          {
            break;
          }

          if (v27)
          {
            v30 = [(BCSURLPatternMatcher *)self extractedPathForAnyMatchUsingScanner:v24 delimiter:v22 extractedPath:v21 countOfPathComponentsToMatch:*buf];

            if (!v30)
            {
              goto LABEL_30;
            }

            v73 = 0;
            ++v75;
          }

          else
          {
            v30 = [(BCSURLPatternMatcher *)self extractedPathForExactMatchUsingScanner:v24 delimiter:v22 extractedPath:v21 patternPathComponent:v26];

            if (!v30)
            {
LABEL_30:
              v33 = lCopy;
              v21 = 0;
              goto LABEL_31;
            }

            ++v73;
            ++v74;
          }

          v21 = v30;
          v82 = v26;
          v31 = [v23 scanUpToCharactersFromSet:v22 intoString:&v82];
          v32 = v82;

          v26 = v32;
          if ((v31 & 1) == 0)
          {
            v33 = lCopy;
            v34 = 0;
            v26 = v32;
            goto LABEL_32;
          }
        }

        v33 = lCopy;
        if (errorCopy)
        {
          v37 = v28;
          *errorCopy = v29;
        }

LABEL_31:

        v34 = 1;
      }

      else
      {
        v33 = lCopy;
        v73 = 0;
        v74 = 0;
        v75 = 0;
        v34 = 0;
      }

LABEL_32:

      dateCopy = v62;
      if (v34)
      {
        v72 = v21;
        v35 = 0;
        v21 = &stru_28544C2A0;
        lCopy = v33;
        dCopy = v58;
        path = v60;
        v18 = v64;
        v19 = v66;
        goto LABEL_65;
      }

      lCopy = v33;
      dCopy = v58;
      path = v60;
      v18 = v64;
      v19 = v66;
      percentEncodedPath = v68;
    }

    else
    {
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v21 = &stru_28544C2A0;
    }

    v72 = v21;
    if (-[NSObject length](path, "length") && [v18 length] && !-[__CFString isEqualToString:](v21, "isEqualToString:", percentEncodedPath) || !path && objc_msgSend(v18, "length") && objc_msgSend(percentEncodedPath, "length") && !objc_msgSend(percentEncodedPath, "isEqualToString:", @"/"))
    {
      v35 = 0;
      v21 = &stru_28544C2A0;
    }

    else
    {
      v61 = path;
      v63 = dateCopy;
      v65 = v18;
      v67 = v19;
      if ([v18 length])
      {
        v57 = patternCopy;
        v38 = [(BCSURLPatternMatcher *)self dictionaryFromQueryString:v18 orderedKeys:0];
        v80 = 0;
        v39 = [(BCSURLPatternMatcher *)self dictionaryFromQueryString:percentEncodedQuery orderedKeys:&v80];
        v56 = v80;
        [(BCSURLPatternMatcher *)self orderedKeysForPatternQuery:v38 originalURLQuery:v39 orderedOriginalURLQueryKeys:?];
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        obj = v79 = 0u;
        v40 = [obj countByEnumeratingWithState:&v76 objects:v83 count:16];
        if (v40)
        {
          v41 = v40;
          v59 = dCopy;
          v55 = lCopy;
          v42 = *v77;
          v43 = &stru_28544C2A0;
          while (2)
          {
            v44 = 0;
            v21 = v43;
            do
            {
              if (*v77 != v42)
              {
                objc_enumerationMutation(obj);
              }

              v45 = *(*(&v76 + 1) + 8 * v44);
              v46 = [v38 objectForKeyedSubscript:v45];
              v47 = [v39 valueForKey:v45];
              if (![v47 length])
              {
LABEL_57:

                v48 = 0;
                goto LABEL_58;
              }

              if ([v46 isEqualToString:@"*"])
              {
                ++v75;
              }

              else
              {
                if (![v46 isEqualToString:v47])
                {
                  goto LABEL_57;
                }

                ++v74;
              }

              v43 = [(BCSURLPatternMatcher *)self extractedQueryByAddingKey:v45 value:v47 toExtractedQuery:v21];

              ++v44;
              v21 = v43;
            }

            while (v41 != v44);
            v41 = [obj countByEnumeratingWithState:&v76 objects:v83 count:16];
            if (v41)
            {
              continue;
            }

            break;
          }

          v48 = 1;
          v21 = v43;
LABEL_58:
          lCopy = v55;
          dCopy = v59;
          v18 = v65;
        }

        else
        {
          v48 = 1;
          v21 = &stru_28544C2A0;
        }

        patternCopy = v57;
        if (!v48)
        {
          v35 = 0;
          path = v61;
          dateCopy = v63;
          v19 = v67;
          goto LABEL_65;
        }

        v19 = v67;
      }

      else
      {
        v21 = &stru_28544C2A0;
      }

      v49 = [(BCSURLPatternMatcher *)self extractedURLForOriginalURL:lCopy originalURLPathComponents:v19 extractedPath:v72 extractedQuery:v21];
      v50 = [BCSURLNormalizer normalizedURLForURL:v49];
      v51 = [BCSURLPatternMatchResult alloc];
      v52 = [patternCopy description];
      v53 = objc_alloc_init(BCSDateHelper);
      v35 = [(BCSURLPatternMatchResult *)v51 initWithOriginalURL:lCopy extractedURL:v50 totalConsecutivePrefixMatches:v73 totalExactMatches:v74 totalAnyMatches:v75 bundleID:dCopy pattern:v52 expirationDate:v63 dateHelper:v53];

      v19 = v67;
      dateCopy = v63;
      path = v61;
      v18 = v65;
    }

LABEL_65:

    v36 = v72;
LABEL_66:

    goto LABEL_67;
  }

  path = ABSLogCommon();
  if (os_log_type_enabled(path, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[BCSURLPatternMatcher matchPattern:withURL:forBundleID:expirationDate:error:]";
    _os_log_impl(&dword_242072000, path, OS_LOG_TYPE_DEFAULT, "%s Aborting parsing due to nil argument", buf, 0xCu);
  }

  v35 = 0;
LABEL_67:

  return v35;
}

- (id)extractedPathForAnyMatchUsingScanner:(id)scanner delimiter:(id)delimiter extractedPath:(id)path countOfPathComponentsToMatch:(unint64_t)match
{
  scannerCopy = scanner;
  delimiterCopy = delimiter;
  pathCopy = path;
  v12 = pathCopy;
  if (match)
  {
    while (1)
    {
      v16 = 0;
      [scannerCopy scanUpToCharactersFromSet:delimiterCopy intoString:&v16];
      v13 = v16;
      if (![v13 length])
      {
        break;
      }

      v14 = [v12 stringByAppendingPathComponent:v13];

      v12 = v14;
      if (!--match)
      {
        goto LABEL_7;
      }
    }

    v14 = 0;
  }

  else
  {
    v14 = pathCopy;
  }

LABEL_7:

  return v14;
}

- (id)extractedPathForExactMatchUsingScanner:(id)scanner delimiter:(id)delimiter extractedPath:(id)path patternPathComponent:(id)component
{
  pathCopy = path;
  componentCopy = component;
  v14 = 0;
  [scanner scanUpToCharactersFromSet:delimiter intoString:&v14];
  v11 = v14;
  if ([v11 length] && !objc_msgSend(v11, "caseInsensitiveCompare:", componentCopy))
  {
    v12 = [pathCopy stringByAppendingPathComponent:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)extractedURLForOriginalURL:(id)l originalURLPathComponents:(id)components extractedPath:(id)path extractedQuery:(id)query
{
  lCopy = l;
  pathCopy = path;
  queryCopy = query;
  percentEncodedQuery = [components percentEncodedQuery];
  scheme = [lCopy scheme];
  if (![scheme length])
  {
    v23 = 0;
LABEL_13:

    goto LABEL_15;
  }

  host = [lCopy host];
  v15 = [host length];

  if (v15)
  {
    v16 = MEMORY[0x277CCACA8];
    scheme2 = [lCopy scheme];
    host2 = [lCopy host];
    if ([(__CFString *)pathCopy length])
    {
      v19 = pathCopy;
    }

    else
    {
      v19 = &stru_28544C2A0;
    }

    scheme = [v16 stringWithFormat:@"%@://%@%@", scheme2, host2, v19];

    if ([percentEncodedQuery length])
    {
      v20 = MEMORY[0x277CCACA8];
      if ([(__CFString *)queryCopy length])
      {
        v21 = queryCopy;
      }

      else
      {
        v21 = &stru_28544C2A0;
      }

      v22 = [v20 stringWithFormat:@"%@%@", scheme, v21];

      scheme = v22;
    }

    v23 = [MEMORY[0x277CBEBC0] URLWithString:scheme];
    goto LABEL_13;
  }

  v23 = 0;
LABEL_15:

  return v23;
}

- (BOOL)isAnyMatchFoundForPathPattern:(id)pattern countOfPathComponents:(int64_t *)components error:(id *)error
{
  v21[1] = *MEMORY[0x277D85DE8];
  patternCopy = pattern;
  if ([patternCopy length] < 3)
  {
    v18 = 0;
  }

  else
  {
    [patternCopy length];
    MEMORY[0x28223BE20]();
    v9 = (v21 - v8);
    [patternCopy length];
    MEMORY[0x28223BE20]();
    v11 = v21 - v10;
    [patternCopy getCharacters:v9 range:{0, objc_msgSend(patternCopy, "length")}];
    if (*v9 != 91 || v9[[patternCopy length] - 1] != 93)
    {
      goto LABEL_16;
    }

    if (([patternCopy length] - 3) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = 0;
      v13 = v9 + 1;
      while (1)
      {
        v14 = v13[v12];
        if ((v14 - 58) <= 0xFFFFFFF5)
        {
          break;
        }

        v15 = v12 + 1;
        *&v11[2 * v12] = v14;
        v16 = [patternCopy length];
        v17 = v12 + 2;
        ++v12;
        if (v17 >= v16 - 1)
        {
          goto LABEL_11;
        }
      }

      if (error)
      {
        [BCSError errorWithDomain:@"com.apple.businessservices" code:41 userInfo:0];
        *error = v18 = 0;
        goto LABEL_17;
      }

LABEL_16:
      v18 = 0;
      goto LABEL_17;
    }

    v15 = 0;
LABEL_11:
    *&v11[2 * v15] = 0;
    v19 = strtol(v11, 0, 10);
    if (components)
    {
      *components = v19;
    }

    v18 = 1;
  }

LABEL_17:

  return v18;
}

- (id)dictionaryFromQueryString:(id)string orderedKeys:(id *)keys
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = [string componentsSeparatedByString:@"&"];
  [MEMORY[0x277CBEB38] dictionary];
  v22 = v21 = keys;
  if (keys)
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  }

  else
  {
    v6 = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    v10 = @"=";
    do
    {
      v11 = 0;
      v23 = v8;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [*(*(&v25 + 1) + 8 * v11) componentsSeparatedByString:{v10, v21}];
        if ([v12 count] >= 2)
        {
          v13 = [v12 objectAtIndexedSubscript:0];
          [v6 addObject:v13];
          v14 = [v12 objectAtIndexedSubscript:1];
          [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"#"];
          v16 = v15 = v10;
          v17 = [v14 componentsSeparatedByCharactersInSet:v16];
          [v17 firstObject];
          v19 = v18 = v6;

          v10 = v15;
          [v22 setObject:v19 forKeyedSubscript:v13];

          v6 = v18;
          v8 = v23;
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  if (v21)
  {
    *v21 = [v6 copy];
  }

  return v22;
}

- (id)extractedQueryByAddingKey:(id)key value:(id)value toExtractedQuery:(id)query
{
  keyCopy = key;
  valueCopy = value;
  queryCopy = query;
  if (![(__CFString *)queryCopy length])
  {

    queryCopy = @"?";
  }

  if ([(__CFString *)queryCopy length]>= 2)
  {
    v10 = [(__CFString *)queryCopy stringByAppendingString:@"&"];

    queryCopy = v10;
  }

  valueCopy = [(__CFString *)queryCopy stringByAppendingFormat:@"%@=%@", keyCopy, valueCopy];

  return valueCopy;
}

- (id)orderedKeysForPatternQuery:(id)query originalURLQuery:(id)lQuery orderedOriginalURLQueryKeys:(id)keys
{
  v37 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  lQueryCopy = lQuery;
  keysCopy = keys;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(queryCopy, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = keysCopy;
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v31 + 1) + 8 * i);
        v17 = [queryCopy objectForKeyedSubscript:v16];

        if (v17)
        {
          [v10 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v13);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  allKeys = [queryCopy allKeys];
  v19 = [allKeys countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(allKeys);
        }

        v23 = *(*(&v27 + 1) + 8 * j);
        v24 = [lQueryCopy objectForKeyedSubscript:v23];

        if (!v24)
        {
          [v10 addObject:v23];
        }
      }

      v20 = [allKeys countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v20);
  }

  v25 = [v10 copy];

  return v25;
}

@end