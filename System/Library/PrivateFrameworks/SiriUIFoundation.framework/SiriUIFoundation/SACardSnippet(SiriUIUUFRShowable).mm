@interface SACardSnippet(SiriUIUUFRShowable)
- (id)_uufrShownRequestedByInstrumentationManager:()SiriUIUUFRShowable;
@end

@implementation SACardSnippet(SiriUIUUFRShowable)

- (id)_uufrShownRequestedByInstrumentationManager:()SiriUIUUFRShowable
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v32.receiver = self;
  v32.super_class = &off_287A263A8;
  v5 = objc_msgSendSuper2(&v32, sel__uufrShownRequestedByInstrumentationManager_, v4);
  aceId = [self aceId];
  v7 = [v4 cardIDforSnippetAceID:aceId];

  if (v7)
  {
    aceId2 = [self aceId];
    backingCard = [v4 cardIDforSnippetAceID:aceId2];
    [v5 setViewID:backingCard];
  }

  else
  {
    aceId2 = [self siriui_card];
    backingCard = [aceId2 backingCard];
    cardId = [backingCard cardId];
    [v5 setViewID:cardId];
  }

  siriui_card = [self siriui_card];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    siriui_card2 = [self siriui_card];
    backingCard2 = [siriui_card2 backingCard];
    cardSections = [backingCard2 cardSections];
    firstObject = [cardSections firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      array = [MEMORY[0x277CBEB18] array];
      cardSections2 = [firstObject cardSections];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v19 = [cardSections2 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v29;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v29 != v21)
            {
              objc_enumerationMutation(cardSections2);
            }

            v23 = *(*(&v28 + 1) + 8 * i);
            resultIdentifier = [v23 resultIdentifier];

            if (resultIdentifier)
            {
              resultIdentifier2 = [v23 resultIdentifier];
              [array addObject:resultIdentifier2];
            }
          }

          v20 = [cardSections2 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v20);
      }

      v26 = objc_alloc_init(MEMORY[0x277D5A8C8]);
      [v26 setResultIdentifiers:array];
      [v5 setGridCardSection:v26];
    }
  }

  return v5;
}

@end