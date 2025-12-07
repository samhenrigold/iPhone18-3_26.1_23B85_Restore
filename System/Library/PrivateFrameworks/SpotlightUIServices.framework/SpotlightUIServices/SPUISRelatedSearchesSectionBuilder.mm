@interface SPUISRelatedSearchesSectionBuilder
+ (id)supportedBundleIds;
- (BOOL)shouldSkipSection;
- (id)buildCardSections;
- (id)buildTitle;
@end

@implementation SPUISRelatedSearchesSectionBuilder

+ (id)supportedBundleIds
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"com.apple.parsec.related_search";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (BOOL)shouldSkipSection
{
  v8.receiver = self;
  v8.super_class = SPUISRelatedSearchesSectionBuilder;
  if ([(SPUISSectionBuilder *)&v8 shouldSkipSection])
  {
    return 1;
  }

  queryContext = [(SPUISSectionBuilder *)self queryContext];
  searchEntities = [queryContext searchEntities];
  firstObject = [searchEntities firstObject];
  if ([firstObject isContactEntitySearch])
  {
    v3 = [(SPUISSectionBuilder *)self renderState]!= 4;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)buildCardSections
{
  selfCopy = self;
  v53 = *MEMORY[0x277D85DE8];
  queryContext = [(SPUISSectionBuilder *)self queryContext];
  searchEntities = [queryContext searchEntities];
  firstObject = [searchEntities firstObject];

  searchString = [queryContext searchString];
  if (![(__CFString *)searchString length])
  {
    searchString2 = [firstObject searchString];

    searchString = searchString2;
  }

  tokenText = [firstObject tokenText];
  v43 = queryContext;
  if ([tokenText length] && -[__CFString length](searchString, "length") && (-[__CFString isEqualToString:](searchString, "isEqualToString:", tokenText) & 1) == 0 && (objc_msgSend(firstObject, "isPhotosEntitySearch") & 1) == 0)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [SPUISUtilities localizedStringForKey:@"SEARCH_CONTINUATION_STRING_FORMAT"];
    v9 = [v10 localizedStringWithFormat:v11, tokenText, searchString];

    searchString = v11;
    goto LABEL_12;
  }

  if ([tokenText length] && !-[__CFString length](searchString, "length") && (objc_msgSend(firstObject, "isPhotosEntitySearch") & 1) == 0)
  {
    v9 = tokenText;
LABEL_12:

    searchString = v9;
  }

  v42 = tokenText;
  if (!searchString)
  {
    searchString = &stru_287C50EE8;
  }

  section = [(SPUISSectionBuilder *)selfCopy section];
  resultSet = [section resultSet];
  array = [resultSet array];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v15 = array;
  v16 = [v15 countByEnumeratingWithState:&v46 objects:v52 count:16];
  v44 = firstObject;
  if (v16)
  {
    v17 = v16;
    v41 = selfCopy;
    v18 = *v47;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v47 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v46 + 1) + 8 * i);
        inlineCard = [v20 inlineCard];
        cardSections = [inlineCard cardSections];
        firstObject2 = [cardSections firstObject];
        command = [firstObject2 command];

        v25 = objc_msgSend_title(v20);
        text = [v25 text];
        if ([text isEqualToString:searchString])
        {

LABEL_29:
          v29 = 1;
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          searchString3 = [command searchString];
          v28 = [searchString3 isEqualToString:searchString];

          if (v28)
          {
            goto LABEL_29;
          }
        }

        else
        {
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }

    v29 = 0;
LABEL_30:
    firstObject = v44;
    selfCopy = v41;
  }

  else
  {
    v29 = 0;
  }

  v45.receiver = selfCopy;
  v45.super_class = SPUISRelatedSearchesSectionBuilder;
  buildCardSections = [(SPUISSectionBuilder *)&v45 buildCardSections];
  isContactEntitySearch = [firstObject isContactEntitySearch];
  if ((v29 & 1) == 0)
  {
    if (isContactEntitySearch)
    {
      v32 = @"rs: contactAsTypedSuggestion";
    }

    else
    {
      v32 = [@"rs:" stringByAppendingString:searchString];
    }

    v33 = [MEMORY[0x277D4C3A0] textWithString:searchString];
    [v33 setIsEmphasized:1];
    v34 = objc_opt_new();
    v51 = v33;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
    [v34 setFormattedTextPieces:v35];

    v36 = objc_opt_new();
    [v36 setSearchString:searchString];
    v37 = objc_opt_new();
    [v37 setSuggestionText:v34];
    [v37 setSuggestionType:4];
    [v37 setResultIdentifier:v32];
    [v37 setCardSectionId:v32];
    [v37 setCommand:v36];
    v50 = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
    v39 = [v38 arrayByAddingObjectsFromArray:buildCardSections];

    buildCardSections = v39;
    firstObject = v44;
  }

  return buildCardSections;
}

- (id)buildTitle
{
  v2 = MEMORY[0x277D4C598];
  v3 = [SPUISUtilities localizedStringForKey:@"RELATED_SEARCHES"];
  v4 = [v2 textWithString:v3];

  return v4;
}

@end