@interface IKRestrictionsUtilities
+ (id)_purgableRatingsDictionary;
+ (id)_ratingDictionaryForDomain:(id)domain countryCode:(id)code;
+ (id)orderedRankingsInDomain:(id)domain countryCode:(id)code;
+ (id)rankingForRestrictionRating:(id)rating inDomain:(id)domain countryCode:(id)code;
+ (id)ratingForRestrictionRanking:(id)ranking inDomain:(id)domain countryCode:(id)code;
- (void)cache:(id)cache willEvictObject:(id)object;
@end

@implementation IKRestrictionsUtilities

+ (id)_purgableRatingsDictionary
{
  if (_purgableRatingsDictionary_sOnce != -1)
  {
    +[IKRestrictionsUtilities _purgableRatingsDictionary];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = [_purgableRatingsDictionary_sCache objectForKey:@"dictionary"];
  if (!v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 URLForResource:@"RatingProviders" withExtension:@"plist"];

    v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v6];
    [_purgableRatingsDictionary_sCache setObject:v4 forKey:@"dictionary"];
  }

  objc_sync_exit(selfCopy);

  return v4;
}

uint64_t __53__IKRestrictionsUtilities__purgableRatingsDictionary__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = _purgableRatingsDictionary_sCache;
  _purgableRatingsDictionary_sCache = v0;

  v2 = objc_alloc_init(IKRestrictionsUtilities);
  v3 = _purgableRatingsDictionary_sDelegateInstance;
  _purgableRatingsDictionary_sDelegateInstance = v2;

  v4 = _purgableRatingsDictionary_sCache;
  v5 = _purgableRatingsDictionary_sDelegateInstance;

  return [v4 setDelegate:v5];
}

- (void)cache:(id)cache willEvictObject:(id)object
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = ITMLKitGetLogObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_2549A4000, v4, OS_LOG_TYPE_INFO, "%@ cached ratings dictionary will be evicted", &v7, 0xCu);
  }
}

+ (id)ratingForRestrictionRanking:(id)ranking inDomain:(id)domain countryCode:(id)code
{
  v38 = *MEMORY[0x277D85DE8];
  rankingCopy = ranking;
  domainCopy = domain;
  codeCopy = code;
  v11 = [self _ratingDictionaryForDomain:domainCopy countryCode:codeCopy];
  integerValue = [rankingCopy integerValue];
  v13 = [v11 count];
  v14 = *MEMORY[0x277CEC570];
  if (v13)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v16)
    {
      v17 = v16;
      v28 = v11;
      v29 = codeCopy;
      v30 = domainCopy;
      v31 = rankingCopy;
      v32 = 0;
      v18 = *v34;
      v27 = v14;
      v19 = v14;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v34 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v33 + 1) + 8 * i);
          v22 = [v21 objectForKey:{@"rank", v27, v28, v29, v30, v31}];
          integerValue2 = [v22 integerValue];

          if (integerValue2 >= integerValue && v19 >= integerValue2)
          {
            v19 = integerValue2;
            v24 = v21;

            v32 = v24;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v17);

      domainCopy = v30;
      rankingCopy = v31;
      v11 = v28;
      codeCopy = v29;
      v14 = v27;
      if (v32)
      {
        v25 = [v32 objectForKey:@"rating"];

        goto LABEL_23;
      }
    }

    else
    {
    }

    if (integerValue == v14)
    {
      v25 = @"Any";
    }

    else
    {
      v25 = @"None";
    }
  }

  else if (integerValue == v14)
  {
    v25 = @"Any";
  }

  else if (integerValue == *MEMORY[0x277CEC578])
  {
    v25 = @"None";
  }

  else
  {
    v25 = 0;
  }

LABEL_23:

  return v25;
}

+ (id)orderedRankingsInDomain:(id)domain countryCode:(id)code
{
  codeCopy = code;
  domainCopy = domain;
  _purgableRatingsDictionary = [self _purgableRatingsDictionary];
  v9 = *MEMORY[0x277CEC568];
  if (codeCopy)
  {
    v9 = codeCopy;
  }

  v10 = v9;

  lowercaseString = [v10 lowercaseString];

  v12 = [_purgableRatingsDictionary objectForKey:lowercaseString];

  v13 = [v12 objectForKey:domainCopy];

  v14 = [v13 valueForKey:@"rank"];
  v15 = [v14 sortedArrayUsingSelector:sel_compare_];

  return v15;
}

+ (id)rankingForRestrictionRating:(id)rating inDomain:(id)domain countryCode:(id)code
{
  v28 = *MEMORY[0x277D85DE8];
  ratingCopy = rating;
  domainCopy = domain;
  codeCopy = code;
  if ([ratingCopy isEqualToString:@"Any"])
  {
    v11 = MEMORY[0x277CCABB0];
    v12 = MEMORY[0x277CEC570];
LABEL_5:
    v13 = [v11 numberWithInt:*v12];
    goto LABEL_19;
  }

  if ([ratingCopy isEqualToString:@"None"])
  {
    v11 = MEMORY[0x277CCABB0];
    v12 = MEMORY[0x277CEC578];
    goto LABEL_5;
  }

  [self _ratingDictionaryForDomain:domainCopy countryCode:codeCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v26 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
LABEL_8:
    v18 = 0;
    while (1)
    {
      if (*v24 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v23 + 1) + 8 * v18);
      v20 = [v19 objectForKey:{@"rating", v23}];
      if ([v20 isEqualToString:ratingCopy])
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v16)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }

    v21 = v19;

    if (!v21)
    {
      goto LABEL_17;
    }

    v13 = [v21 objectForKey:@"rank"];
  }

  else
  {
LABEL_14:

LABEL_17:
    v13 = [MEMORY[0x277CCABB0] numberWithInt:{*MEMORY[0x277CEC570], v23}];
  }

LABEL_19:

  return v13;
}

+ (id)_ratingDictionaryForDomain:(id)domain countryCode:(id)code
{
  domainCopy = domain;
  codeCopy = code;
  _purgableRatingsDictionary = [self _purgableRatingsDictionary];
  v9 = [domainCopy isEqualToString:@"ratingApps"];
  v10 = *MEMORY[0x277CEC568];
  if (codeCopy)
  {
    v11 = v9;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = *MEMORY[0x277CEC568];
  }

  else
  {
    v12 = codeCopy;
  }

  v13 = v12;

  lowercaseString = [v13 lowercaseString];
  v15 = [_purgableRatingsDictionary objectForKey:lowercaseString];

  if (!v15)
  {
    v16 = v10;

    lowercaseString2 = [v16 lowercaseString];
    v15 = [_purgableRatingsDictionary objectForKey:lowercaseString2];

    v13 = v16;
  }

  v18 = [v15 objectForKey:domainCopy];

  return v18;
}

@end