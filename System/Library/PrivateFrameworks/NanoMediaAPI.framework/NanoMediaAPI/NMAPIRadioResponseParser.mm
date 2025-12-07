@interface NMAPIRadioResponseParser
- (id)resultsWithDictionary:(id)dictionary error:(id *)error;
@end

@implementation NMAPIRadioResponseParser

- (id)resultsWithDictionary:(id)dictionary error:(id *)error
{
  v63 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [dictionaryCopy objectForKey:@"data"];
  v9 = NMAPIArrayWithObject(v8, @"data", error);

  if (v9)
  {
    v10 = NMAPIDictionaryInSingleObjectArray(v9, @"radioGrouping", error);
    v11 = v10;
    if (v10)
    {
      v12 = [v10 objectForKey:@"type"];
      v13 = NMAPIStringWithObject(v12, @"type", error);

      if ([v13 isEqualToString:@"groupings"])
      {
        v14 = [v11 valueForKeyPath:@"relationships.tabs.data"];
        v15 = NMAPIArrayWithObject(v14, @"tabs", error);

        if (v15 && [v15 count])
        {
          firstObject = [v15 firstObject];
          v17 = NMAPIDictionaryWithObject(firstObject, @"tabsDictionary", error);

          v18 = v17;
          if (v17)
          {
            v48 = v17;
            v19 = [v17 valueForKeyPath:@"relationships.children.data"];
            v17 = NMAPIArrayWithObject(v19, @"sectionsArray", error);

            v20 = v17;
            if (v17)
            {
              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              v47 = v17;
              obj = v17;
              v52 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
              if (v52)
              {
                v50 = v13;
                v51 = *v55;
                v45 = v11;
                v46 = dictionaryCopy;
                v53 = v7;
                v44 = v15;
                while (2)
                {
                  for (i = 0; i != v52; ++i)
                  {
                    if (*v55 != v51)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v22 = NMAPIDictionaryWithObject(*(*(&v54 + 1) + 8 * i), @"section", error);
                    if (!v22)
                    {
                      goto LABEL_36;
                    }

                    v23 = v22;
                    v24 = [v22 objectForKey:@"id"];
                    v25 = NMAPIStringWithObject(v24, @"sectionIdentifier", error);

                    if (!v25)
                    {

LABEL_36:
                      v17 = 0;
                      v11 = v45;
                      dictionaryCopy = v46;
                      v7 = v53;
                      v15 = v44;
                      goto LABEL_37;
                    }

                    v26 = [v23 valueForKeyPath:@"relationships.children.data"];
                    v27 = NMAPIOptionalArrayWithObject(v26, @"AppleRadio", error);

                    if (v27)
                    {
                      v28 = [v23 mutableCopy];
                      [v28 removeObjectForKey:@"relationships"];
                      v29 = [NMAPISectionResult alloc];
                      v30 = [v28 copy];
                      v31 = [(NMAPISectionResult *)v29 initWithSectionIdentifier:v25 sectionDictionary:v30 itemsArray:v27];
                      [v53 addObject:v31];
                    }

                    v32 = [v23 valueForKeyPath:{@"relationships.contents.data", v44, v45, v46}];
                    v33 = NMAPIOptionalArrayWithObject(v32, @"FeaturedStations", error);

                    if (v33)
                    {
                      v34 = [v23 mutableCopy];
                      [v34 removeObjectForKey:@"relationships"];
                      v35 = [NMAPISectionResult alloc];
                      v36 = [v34 copy];
                      v37 = [(NMAPISectionResult *)v35 initWithSectionIdentifier:v25 sectionDictionary:v36 itemsArray:v33];
                      [v53 addObject:v37];
                    }

                    v38 = [v23 valueForKeyPath:@"attributes.links"];
                    v39 = NMAPIOptionalArrayWithObject(v38, @"GenreLinks", error);

                    if (v39)
                    {
                      v40 = [[NMAPISectionResult alloc] initWithSectionIdentifier:v25 sectionDictionary:v23 itemsArray:v39];
                      [v53 addObject:v40];
                    }

                    v13 = v50;
                  }

                  v11 = v45;
                  dictionaryCopy = v46;
                  v7 = v53;
                  v15 = v44;
                  v52 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
                  if (v52)
                  {
                    continue;
                  }

                  break;
                }
              }

              v41 = [v7 count];
              if (error && !v41)
              {
                *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7102 userInfo:0];
              }

              v17 = [v7 copy];
LABEL_37:
              v20 = v47;
            }

            v18 = v48;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v42 = NMLogForCategory(9);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          selfCopy = self;
          v61 = 2112;
          v62 = v13;
          _os_log_impl(&dword_25B251000, v42, OS_LOG_TYPE_DEFAULT, "[NMAPIResponseParser] Invalid response for request (%@) due to unexpected type: %@", buf, 0x16u);
        }

        if (error)
        {
          [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7102 userInfo:0];
          *error = v17 = 0;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end