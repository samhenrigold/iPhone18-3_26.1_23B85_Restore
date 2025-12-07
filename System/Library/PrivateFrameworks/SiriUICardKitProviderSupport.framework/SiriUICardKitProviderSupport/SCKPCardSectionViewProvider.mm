@interface SCKPCardSectionViewProvider
- (BOOL)isShortcutCard:(id)card;
- (NSArray)viewConfigurations;
- (SCKPCardSectionViewProvider)initWithCard:(id)card;
@end

@implementation SCKPCardSectionViewProvider

- (SCKPCardSectionViewProvider)initWithCard:(id)card
{
  cardCopy = card;
  v9.receiver = self;
  v9.super_class = SCKPCardSectionViewProvider;
  v6 = [(SCKPCardSectionViewProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_card, card);
  }

  return v7;
}

- (NSArray)viewConfigurations
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  cardSections = [(CRCard *)self->_card cardSections];
  v28 = [cardSections countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v28)
  {
    v5 = 0x277D4C000uLL;
    v6 = *v30;
    v7 = 0x279C5F000uLL;
    v27 = v3;
    do
    {
      v8 = 0;
      do
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(cardSections);
        }

        v9 = *(*(&v29 + 1) + 8 * v8);
        backingCardSection = [v9 backingCardSection];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        backingCardSection2 = [v9 backingCardSection];
        if (isKindOfClass)
        {
          messageAttachment = [objc_alloc(*(v7 + 3664)) initWithMediaRemoteControlCardSection:backingCardSection2];
          goto LABEL_8;
        }

        objc_opt_class();
        v16 = objc_opt_isKindOfClass();

        if ((v16 & 1) == 0 || [(SCKPCardSectionViewProvider *)self isShortcutCard:self->_card])
        {
          goto LABEL_12;
        }

        backingCardSection2 = [v9 backingCardSection];
        if ([backingCardSection2 messageStatus] != 1)
        {
          audioMessageURL = [backingCardSection2 audioMessageURL];
          if (audioMessageURL)
          {
          }

          else
          {
            messageAttachment = [backingCardSection2 messageAttachment];

            if (!messageAttachment)
            {
              goto LABEL_8;
            }
          }
        }

        v18 = [SCKPMessageCardSectionViewController alloc];
        interactions = [(CRCard *)self->_card interactions];
        [interactions anyObject];
        v20 = v6;
        v21 = v5;
        selfCopy = self;
        v24 = v23 = cardSections;
        messageAttachment = [(SCKPMessageCardSectionViewController *)v18 initWithMessageCardSection:backingCardSection2 interaction:v24];

        cardSections = v23;
        self = selfCopy;
        v5 = v21;
        v6 = v20;
        v7 = 0x279C5F000;

        v3 = v27;
LABEL_8:

        if (messageAttachment)
        {
          v14 = objc_alloc_init(MEMORY[0x277CF93B8]);
          [v14 setCardSection:v9];
          [v14 setCardSectionViewController:messageAttachment];
          view = [(SCKPMessageCardSectionViewController *)messageAttachment view];
          [v14 setCardSectionView:view];

          [v3 addObject:v14];
        }

LABEL_12:
        ++v8;
      }

      while (v28 != v8);
      v25 = [cardSections countByEnumeratingWithState:&v29 objects:v33 count:16];
      v28 = v25;
    }

    while (v25);
  }

  return v3;
}

- (BOOL)isShortcutCard:(id)card
{
  interactions = [card interactions];
  anyObject = [interactions anyObject];

  intent = [anyObject intent];
  _metadata = [intent _metadata];
  objc_opt_class();
  v7 = (objc_opt_isKindOfClass() & 1) != 0 || [_metadata executionContext] == 2 || objc_msgSend(_metadata, "executionContext") == 9;

  return v7;
}

@end