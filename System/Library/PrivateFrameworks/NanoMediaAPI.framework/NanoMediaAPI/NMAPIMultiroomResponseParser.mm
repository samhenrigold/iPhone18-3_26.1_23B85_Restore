@interface NMAPIMultiroomResponseParser
- (id)resultsWithDictionary:(id)dictionary error:(id *)error;
@end

@implementation NMAPIMultiroomResponseParser

- (id)resultsWithDictionary:(id)dictionary error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [dictionaryCopy objectForKey:@"data"];
  v8 = NMAPIArrayWithObject(v7, @"data", error);

  if (v8)
  {
    v9 = NMAPIDictionaryInSingleObjectArray(v8, @"multiroom", error);
    v10 = v9;
    if (v9)
    {
      v11 = [v9 valueForKeyPath:@"relationships.children.data"];
      v12 = NMAPIArrayWithObject(v11, @"rooms", error);

      if (v12)
      {
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        obj = v12;
        v13 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v13)
        {
          v14 = v13;
          v32 = *v35;
          v33 = v6;
          v29 = v10;
          v30 = dictionaryCopy;
          v28 = v12;
          while (2)
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v35 != v32)
              {
                objc_enumerationMutation(obj);
              }

              v16 = NMAPIDictionaryWithObject(*(*(&v34 + 1) + 8 * i), @"room", error);
              if (!v16)
              {
                goto LABEL_20;
              }

              v17 = v16;
              v18 = [v16 objectForKey:@"id"];
              v19 = NMAPIStringWithObject(v18, @"sectionIdentifier", error);

              if (!v19)
              {
                goto LABEL_19;
              }

              v20 = [v17 valueForKeyPath:@"relationships.contents.data"];
              v21 = NMAPIArrayWithObject(v20, @"items", error);

              if (!v21)
              {

LABEL_19:
LABEL_20:

                v26 = 0;
                v10 = v29;
                dictionaryCopy = v30;
                v6 = v33;
                v12 = v28;
                goto LABEL_21;
              }

              v22 = [v17 mutableCopy];
              [v22 removeObjectForKey:@"relationships"];
              v23 = [NMAPISectionResult alloc];
              v24 = [v22 copy];
              v25 = [(NMAPISectionResult *)v23 initWithSectionIdentifier:v19 sectionDictionary:v24 itemsArray:v21];
              [v33 addObject:v25];
            }

            v14 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
            v10 = v29;
            dictionaryCopy = v30;
            v6 = v33;
            v12 = v28;
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v26 = [v6 copy];
      }

      else
      {
        v26 = 0;
      }

LABEL_21:
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

@end