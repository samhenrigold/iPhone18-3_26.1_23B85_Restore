@interface PGTextFeature
+ (id)_stringToIndexFromTokens:(id)tokens;
+ (id)_tokensFromString:(id)string lemmatize:(BOOL)lemmatize;
+ (id)graphNamesForNode:(id)node locationHelper:(id)helper;
+ (id)mergedTextFeatureFromTextFeatures:(id)features;
+ (id)stringForFeatureOrigin:(unint64_t)origin;
+ (id)textFeaturesFromNode:(id)node type:(unint64_t)type weight:(double)weight options:(unint64_t)options locationHelper:(id)helper;
+ (id)textFeaturesFromString:(id)string synonyms:(id)synonyms type:(unint64_t)type weight:(double)weight options:(unint64_t)options;
+ (id)textFeaturesFromString:(id)string type:(unint64_t)type weight:(double)weight options:(unint64_t)options;
+ (unint64_t)_mostImportantTextFeatureTypeAmongTypes:(id)types;
- (PGTextFeature)initWithString:(id)string originalString:(id)originalString type:(unint64_t)type weight:(double)weight origin:(unint64_t)origin;
- (id)description;
@end

@implementation PGTextFeature

- (id)description
{
  v12.receiver = self;
  v12.super_class = PGTextFeature;
  v3 = [(PGTextFeature *)&v12 description];
  v4 = [PGFeature stringForFeatureType:self->_type];
  string = [(PGTextFeature *)self string];
  originalString = [(PGTextFeature *)self originalString];
  [(PGTextFeature *)self weight];
  v8 = v7;
  v9 = [PGTextFeature stringForFeatureOrigin:[(PGTextFeature *)self origin]];
  v10 = [v3 stringByAppendingFormat:@": %@ -> %@ (original: %@, weight: %f, origin: %@)", v4, string, originalString, v8, v9];

  return v10;
}

- (PGTextFeature)initWithString:(id)string originalString:(id)originalString type:(unint64_t)type weight:(double)weight origin:(unint64_t)origin
{
  stringCopy = string;
  originalStringCopy = originalString;
  v18.receiver = self;
  v18.super_class = PGTextFeature;
  v15 = [(PGTextFeature *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_string, string);
    objc_storeStrong(&v16->_originalString, originalString);
    v16->_type = type;
    v16->_weight = weight;
    v16->_origin = origin;
  }

  return v16;
}

+ (unint64_t)_mostImportantTextFeatureTypeAmongTypes:(id)types
{
  v16 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  [self vipTextFeatureTypes];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v14 = 0u;
  unsignedIntegerValue = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (unsignedIntegerValue)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != unsignedIntegerValue; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([typesCopy containsObject:{v9, v11}])
        {
          unsignedIntegerValue = [v9 unsignedIntegerValue];
          goto LABEL_11;
        }
      }

      unsignedIntegerValue = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (unsignedIntegerValue)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return unsignedIntegerValue;
}

+ (id)mergedTextFeatureFromTextFeatures:(id)features
{
  v51 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  v5 = [featuresCopy count];
  if (v5)
  {
    v6 = v5;
    anyObject = [featuresCopy anyObject];
    if (v6 == 1)
    {
      loggingConnection2 = anyObject;
      v9 = loggingConnection2;
    }

    else
    {
      selfCopy = self;
      v41 = anyObject;
      string = [anyObject string];
      array = [MEMORY[0x277CBEB18] array];
      v13 = [MEMORY[0x277CCA940] set];
      v14 = [MEMORY[0x277CCA940] set];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v42 = featuresCopy;
      v15 = featuresCopy;
      v16 = [v15 countByEnumeratingWithState:&v45 objects:v50 count:16];
      v44 = v13;
      if (v16)
      {
        v17 = v16;
        v18 = *v46;
        v19 = 0.0;
        obj = v15;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            v21 = v14;
            if (*v46 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v45 + 1) + 8 * i);
            string2 = [v22 string];
            v24 = string;
            v25 = [string2 isEqualToString:string];

            if ((v25 & 1) == 0)
            {
              v30 = +[PGLogging sharedLogging];
              loggingConnection = [v30 loggingConnection];

              if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Request to squash text features that don't have the same string", buf, 2u);
              }

              v9 = 0;
              loggingConnection2 = v41;
              featuresCopy = v42;
              v14 = v21;
              v32 = obj;
              goto LABEL_33;
            }

            originalString = [v22 originalString];
            [array addObject:originalString];

            [v22 weight];
            if (v27 > v19)
            {
              v19 = v27;
            }

            v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v22, "type")}];
            v13 = v44;
            [v44 addObject:v28];

            v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v22, "origin")}];
            v14 = v21;
            [v21 addObject:v29];

            string = v24;
          }

          v15 = obj;
          v17 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v19 = 0.0;
      }

      v24 = string;
      if ([v14 count] == 1)
      {
        anyObject2 = [v14 anyObject];
        integerValue = [anyObject2 integerValue];
      }

      else if ([v14 containsObject:&unk_284482B50])
      {
        integerValue = 1;
      }

      else
      {
        integerValue = 6;
      }

      loggingConnection2 = v41;
      if ([v13 count] == 1)
      {
        anyObject3 = [v13 anyObject];
        integerValue2 = [anyObject3 integerValue];
      }

      else
      {
        v37 = [selfCopy _mostImportantTextFeatureTypeAmongTypes:v13];
        if (v37)
        {
          integerValue2 = v37;
        }

        else
        {
          integerValue2 = 22;
        }
      }

      featuresCopy = v42;
      v38 = [PGTextFeature alloc];
      v32 = [array componentsJoinedByString:@" / "];
      v9 = [(PGTextFeature *)v38 initWithString:v24 originalString:v32 type:integerValue2 weight:integerValue origin:v19];
LABEL_33:
    }
  }

  else
  {
    v10 = +[PGLogging sharedLogging];
    loggingConnection2 = [v10 loggingConnection];

    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "Request to merge text features with empty array", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

+ (id)stringForFeatureOrigin:(unint64_t)origin
{
  if (origin - 1 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788804B8[origin - 1];
  }
}

+ (id)graphNamesForNode:(id)node locationHelper:(id)helper
{
  v34 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  helperCopy = helper;
  v8 = [MEMORY[0x277CBEB58] set];
  label = [nodeCopy label];
  domain = [nodeCopy domain];
  if ([nodeCopy domain] == 103)
  {
    label2 = [nodeCopy label];
    v12 = [label2 isEqualToString:@"ShortTrip"];

    if (v12)
    {
      if ([@"PGHighlightShortTripSearchableText" length])
      {
        [v8 addObject:@"PGHighlightShortTripSearchableText"];
      }

      else
      {
        v21 = +[PGLogging sharedLogging];
        loggingConnection = [v21 loggingConnection];

        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          v32 = 138412290;
          v33 = nodeCopy;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Error: nil or empty localizedName from node %@", &v32, 0xCu);
        }
      }

      graph = [nodeCopy graph];
      v14 = [graph anyNodeForLabel:@"LongTrip" domain:103 properties:0];

      if (v14)
      {
        if ([@"PGHighlightTripSearchableText" length])
        {
          [v8 addObject:@"PGHighlightTripSearchableText"];
          goto LABEL_49;
        }

        v29 = +[PGLogging sharedLogging];
        loggingConnection2 = [v29 loggingConnection];

        if (!os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
        {
LABEL_48:

          goto LABEL_49;
        }

        v32 = 138412290;
        v33 = v14;
        v25 = "Error: nil or empty localizedName from node %@";
        v26 = loggingConnection2;
        v27 = 12;
      }

      else
      {
        v24 = +[PGLogging sharedLogging];
        loggingConnection2 = [v24 loggingConnection];

        if (!os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_48;
        }

        LOWORD(v32) = 0;
        v25 = "Highlight type node 'kPGGraphNodeHighlightTypeTrip' non found in graph";
        v26 = loggingConnection2;
        v27 = 2;
      }

      _os_log_error_impl(&dword_22F0FC000, v26, OS_LOG_TYPE_ERROR, v25, &v32, v27);
      goto LABEL_48;
    }
  }

  if (![objc_opt_class() conformsToProtocol:&unk_284499510])
  {
    if (domain == 300)
    {
      name = [nodeCopy name];
      lowercaseString = [name lowercaseString];

      if (![lowercaseString length])
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (domain != 201)
      {
        if (domain == 200 && [label isEqualToString:@"Country"])
        {
          fullname = [nodeCopy fullname];
          v14 = fullname;
          if (!fullname || ![fullname length])
          {
            v31 = +[PGLogging sharedLogging];
            loggingConnection2 = [v31 loggingConnection];

            if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
            {
              v32 = 138412290;
              v33 = nodeCopy;
              _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "Error: nil or empty fullname from node %@", &v32, 0xCu);
            }

            goto LABEL_48;
          }

          goto LABEL_15;
        }

        lowercaseString = [nodeCopy name];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          stringValue = [lowercaseString stringValue];
        }

        else
        {
          stringValue = lowercaseString;
        }

        name2 = stringValue;
        if (!stringValue || ![stringValue length])
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      lowercaseString = [nodeCopy shortenedNameWithLocationHelper:helperCopy];
      if (![lowercaseString length])
      {
        name2 = [nodeCopy name];
        if (![name2 length])
        {
LABEL_41:

          goto LABEL_42;
        }

LABEL_40:
        [v8 addObject:name2];
        goto LABEL_41;
      }
    }

    [v8 addObject:lowercaseString];
LABEL_42:

    goto LABEL_43;
  }

  v13 = [self _localizedNameForLocalizableNode:nodeCopy];
  v14 = v13;
  if (!v13 || ![v13 length])
  {
    v16 = +[PGLogging sharedLogging];
    loggingConnection2 = [v16 loggingConnection];

    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
    {
      v32 = 138412290;
      v33 = nodeCopy;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "Error: nil or empty localizedName from node %@", &v32, 0xCu);
    }

    goto LABEL_48;
  }

LABEL_15:
  [v8 addObject:v14];
LABEL_49:

LABEL_43:

  return v8;
}

+ (id)textFeaturesFromString:(id)string synonyms:(id)synonyms type:(unint64_t)type weight:(double)weight options:(unint64_t)options
{
  optionsCopy = options;
  v78[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  synonymsCopy = synonyms;
  v13 = [MEMORY[0x277CBEB58] set];
  v14 = optionsCopy & 8;
  v15 = stringCopy;
  v16 = [MEMORY[0x277CBEB58] set];
  if ((optionsCopy & 0x4C) != 0)
  {
    v17 = [self _tokensFromString:v15 lemmatize:v14 != 0];
  }

  else
  {
    v78[0] = v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:1];
  }

  v18 = v17;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v45 = optionsCopy;
  v46 = v18;
  if ((optionsCopy & 0x40) != 0)
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v19 = v18;
    v20 = [v19 countByEnumeratingWithState:&v72 objects:v77 count:16];
    if (v20)
    {
      v21 = v20;
      v48 = v13;
      v22 = *v73;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v73 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [dictionary setObject:&unk_2844870C8 forKeyedSubscript:*(*(&v72 + 1) + 8 * i)];
        }

        v21 = [v19 countByEnumeratingWithState:&v72 objects:v77 count:16];
      }

      while (v21);
      v13 = v48;
    }
  }

  else
  {
    v19 = [self _stringToIndexFromTokens:v18];
    if (v19)
    {
      [dictionary setObject:&unk_2844870C8 forKeyedSubscript:v19];
    }
  }

  v44 = [dictionary count];
  if (v44 < 2)
  {
    v24 = 1;
  }

  else
  {
    v24 = 4;
  }

  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __69__PGTextFeature_textFeaturesFromString_synonyms_type_weight_options___block_invoke;
  v65[3] = &unk_278880470;
  weightCopy = weight;
  v49 = v15;
  v66 = v49;
  typeCopy = type;
  v71 = v24;
  v47 = v13;
  v67 = v47;
  v52 = v16;
  v68 = v52;
  [dictionary enumerateKeysAndObjectsUsingBlock:v65];
  v64 = 0u;
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  v25 = synonymsCopy;
  v26 = [v25 countByEnumeratingWithState:&v61 objects:v76 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v62;
    v29 = @"_";
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v62 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v31 = [self _tokensFromString:*(*(&v61 + 1) + 8 * j) lemmatize:v14 != 0];
        if ([v31 count] <= 2)
        {
          v32 = [v31 componentsJoinedByString:v29];
          if (([v52 containsObject:v32] & 1) == 0)
          {
            v33 = v14;
            selfCopy = self;
            v35 = v25;
            v36 = v29;
            v37 = [[PGTextFeature alloc] initWithString:v32 originalString:v49 type:type weight:2 origin:weight * 0.75];
            [v47 addObject:v37];
            [v52 addObject:v32];

            v29 = v36;
            v25 = v35;
            self = selfCopy;
            v14 = v33;
          }
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v61 objects:v76 count:16];
    }

    while (v27);
  }

  if ((v45 & 0x10) != 0 && v44 <= 1)
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    LODWORD(v39) = 1063675494;
    v40 = [MEMORY[0x277D27738] wordEmbeddingNeighborsWithDistanceForNgram:v49 locale:currentLocale limit:10 distance:v39];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __69__PGTextFeature_textFeaturesFromString_synonyms_type_weight_options___block_invoke_2;
    v53[3] = &unk_278880498;
    selfCopy2 = self;
    v60 = v14 >> 3;
    v54 = v52;
    weightCopy2 = weight;
    v55 = v49;
    typeCopy2 = type;
    v56 = v47;
    [v40 enumerateKeysAndObjectsUsingBlock:v53];
  }

  v41 = v68;
  v42 = v47;

  return v47;
}

void __69__PGTextFeature_textFeaturesFromString_synonyms_type_weight_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 56);
  v6 = a2;
  [a3 doubleValue];
  v8 = [[PGTextFeature alloc] initWithString:v6 originalString:*(a1 + 32) type:*(a1 + 64) weight:*(a1 + 72) origin:v5 * (1.0 - v7)];
  [*(a1 + 40) addObject:v8];
  [*(a1 + 48) addObject:v6];
}

void __69__PGTextFeature_textFeaturesFromString_synonyms_type_weight_options___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 56) _tokensFromString:v5 lemmatize:*(a1 + 80)];
  v8 = [v7 count];
  if (v8 > 2)
  {
    v13 = v8;
    v14 = +[PGLogging sharedLogging];
    v15 = [v14 loggingConnection];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = v5;
      _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "Ignoring PGTextFeature embedding n gram %@", &v19, 0xCu);
    }

    v16 = +[PGLogging sharedLogging];
    v17 = [v16 loggingConnection];

    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [*(a1 + 56) stringForFeatureType:*(a1 + 72)];
      v19 = 138413058;
      v20 = v5;
      v21 = 2112;
      v22 = v18;
      v23 = 2048;
      v24 = v13;
      v25 = 2048;
      v26 = 7;
      _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "Ignoring PGTextFeature %@ (%@) because it exceeds the maximum number of tokens %lu > %lu", &v19, 0x2Au);
    }
  }

  else
  {
    v9 = [v7 componentsJoinedByString:@"_"];
    if (v9 && ([*(a1 + 32) containsObject:v9] & 1) == 0)
    {
      v10 = *(a1 + 64);
      [v6 doubleValue];
      v12 = [[PGTextFeature alloc] initWithString:v9 originalString:*(a1 + 40) type:*(a1 + 72) weight:3 origin:v10 * (1.0 - v11)];
      [*(a1 + 48) addObject:v12];
      [*(a1 + 32) addObject:v9];
    }
  }
}

+ (id)_tokensFromString:(id)string lemmatize:(BOOL)lemmatize
{
  v22 = *MEMORY[0x277D85DE8];
  if (lemmatize)
  {
    v4 = [MEMORY[0x277D27738] tokensFromString:string options:1];
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [MEMORY[0x277D3ACF8] lemmasForToken:v11 locale:0 options:{4, v17}];
          if ([v12 count])
          {
            firstObject = [v12 firstObject];
          }

          else
          {
            v14 = MEMORY[0x277D3ACF8];
            lowercaseString = [v11 lowercaseString];
            firstObject = [v14 stringWithoutDiacriticsFromString:lowercaseString];
          }

          [v5 addObject:firstObject];
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = [MEMORY[0x277D27738] tokensFromString:string options:4];
  }

  return v5;
}

+ (id)textFeaturesFromString:(id)string type:(unint64_t)type weight:(double)weight options:(unint64_t)options
{
  lowercaseString = [string lowercaseString];
  v11 = [self textFeaturesFromString:lowercaseString synonyms:MEMORY[0x277CBEBF8] type:type weight:options options:weight];

  return v11;
}

+ (id)_stringToIndexFromTokens:(id)tokens
{
  v17 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  v4 = [tokensCopy count];
  if (v4 == 1)
  {
    firstObject = [tokensCopy firstObject];
LABEL_5:
    v7 = firstObject;
    goto LABEL_9;
  }

  v6 = v4;
  if (v4 <= 7)
  {
    firstObject = [tokensCopy componentsJoinedByString:@"_"];
    goto LABEL_5;
  }

  v8 = +[PGLogging sharedLogging];
  loggingConnection = [v8 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v11 = 138412802;
    v12 = tokensCopy;
    v13 = 2048;
    v14 = v6;
    v15 = 2048;
    v16 = 7;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Ignoring PGTextFeature %@ because it exceeds the maximum number of tokens %lu > %lu", &v11, 0x20u);
  }

  v7 = 0;
LABEL_9:

  return v7;
}

+ (id)textFeaturesFromNode:(id)node type:(unint64_t)type weight:(double)weight options:(unint64_t)options locationHelper:(id)helper
{
  v36 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  v13 = [PGTextFeature graphNamesForNode:nodeCopy locationHelper:helper];
  v26 = nodeCopy;
  if ((options & 0x20) != 0)
  {
    if ([objc_opt_class() conformsToProtocol:&unk_2844BA4D8])
    {
      localizedSynonyms = [nodeCopy localizedSynonyms];
      goto LABEL_8;
    }

    v15 = +[PGLogging sharedLogging];
    loggingConnection = [v15 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      label = [nodeCopy label];
      *buf = 138412546;
      v33 = label;
      v34 = 2048;
      domain = [nodeCopy domain];
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Node label %@ domain %lu doesn't comform to PGGraphSynonymSupport protocol -> cannot get synonyms", buf, 0x16u);
    }
  }

  localizedSynonyms = MEMORY[0x277CBEBF8];
LABEL_8:
  v17 = [MEMORY[0x277CBEB58] set];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = v13;
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [self textFeaturesFromString:*(*(&v27 + 1) + 8 * i) synonyms:localizedSynonyms type:type weight:options options:weight];
        [v17 unionSet:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v20);
  }

  return v17;
}

@end