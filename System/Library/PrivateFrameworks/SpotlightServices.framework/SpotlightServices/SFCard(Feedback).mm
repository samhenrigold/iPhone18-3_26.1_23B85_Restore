@interface SFCard(Feedback)
- (void)copyForFeedback;
@end

@implementation SFCard(Feedback)

- (void)copyForFeedback
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = [self copy];
  cardSections = [v1 cardSections];
  v3 = [cardSections mutableCopy];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  cardSections2 = [v1 cardSections];
  v5 = [cardSections2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(cardSections2);
        }

        copyForFeedback = [*(*(&v13 + 1) + 8 * v9) copyForFeedback];
        [v3 setObject:copyForFeedback atIndexedSubscript:v7];

        ++v7;
        ++v9;
      }

      while (v6 != v9);
      v6 = [cardSections2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];
  [v1 setCardSections:v11];

  return v1;
}

@end