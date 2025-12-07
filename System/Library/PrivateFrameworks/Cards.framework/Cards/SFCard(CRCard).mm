@interface SFCard(CRCard)
+ (id)_interactionsByIntentDataHashes;
- (id)_interactionDataKey;
- (id)cardIdentifier;
- (id)interaction;
- (id)interactions;
- (id)resolvedCardSections;
- (id)underlyingInteraction;
- (void)cardIdentifier;
- (void)interaction;
- (void)loadCardWithCompletion:()CRCard;
@end

@implementation SFCard(CRCard)

+ (id)_interactionsByIntentDataHashes
{
  if (_interactionsByIntentDataHashes_onceToken != -1)
  {
    +[SFCard(CRCard) _interactionsByIntentDataHashes];
  }

  v2 = _interactionsByIntentDataHashes_interactionsByIntentDataHashes;

  return v2;
}

- (void)loadCardWithCompletion:()CRCard
{
  v4 = a3;
  v5 = +[CRSFCardLoader sharedLoader];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__SFCard_CRCard__loadCardWithCompletion___block_invoke;
  v7[3] = &unk_278DA5948;
  v8 = v4;
  v6 = v4;
  [v5 loadSFCard:self completion:v7];
}

- (id)interactions
{
  interaction = [self interaction];
  if (interaction)
  {
    [MEMORY[0x277CBEB98] setWithObject:interaction];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v2 = ;

  return v2;
}

- (id)interaction
{
  intentMessageData = [self intentMessageData];

  if (intentMessageData)
  {
    _interactionsByIntentDataHashes = [objc_opt_class() _interactionsByIntentDataHashes];
    _interactionDataKey = [self _interactionDataKey];
    v5 = [_interactionsByIntentDataHashes objectForKey:_interactionDataKey];
    if (!v5)
    {
      intentMessageName = [self intentMessageName];
      intentMessageData2 = [self intentMessageData];
      v8 = INIntentCreate();

      intentResponseMessageName = [self intentResponseMessageName];
      intentResponseMessageData = [self intentResponseMessageData];
      v11 = INIntentResponseCreate();

      v5 = [objc_alloc(MEMORY[0x277CD3D58]) initWithIntent:v8 response:v11];
      if (v5)
      {
        [_interactionsByIntentDataHashes setObject:v5 forKey:_interactionDataKey];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)cardIdentifier
{
  cardId = [self cardId];

  if (!cardId)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    v5 = CRLogContextCards;
    if (os_log_type_enabled(CRLogContextCards, OS_LOG_TYPE_ERROR))
    {
      [(SFCard(CRCard) *)self cardIdentifier];
    }

    [self setCardId:uUIDString];
  }

  cardId2 = [self cardId];

  return cardId2;
}

- (id)resolvedCardSections
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  cardSections = [self cardSections];
  v4 = [cardSections countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(cardSections);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        resolvedCardSections = [v8 resolvedCardSections];
        v10 = [resolvedCardSections countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v17;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v17 != v12)
              {
                objc_enumerationMutation(resolvedCardSections);
              }

              [v2 addObject:*(*(&v16 + 1) + 8 * j)];
            }

            v11 = [resolvedCardSections countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v11);
        }

        [v2 addObject:v8];
      }

      v5 = [cardSections countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  v14 = [v2 copy];

  return v14;
}

- (id)underlyingInteraction
{
  interactions = [self interactions];
  anyObject = [interactions anyObject];

  return anyObject;
}

- (id)_interactionDataKey
{
  intentResponseMessageData = [self intentResponseMessageData];

  v3 = MEMORY[0x277CCACA8];
  cardId = [self cardId];
  intentMessageData = [self intentMessageData];
  v6 = [intentMessageData hash];
  v7 = v6;
  if (intentResponseMessageData)
  {
    intentResponseMessageData2 = [self intentResponseMessageData];
    v9 = [v3 stringWithFormat:@"%@/%zd%zd", cardId, v7, objc_msgSend(intentResponseMessageData2, "hash")];
  }

  else
  {
    v9 = [v3 stringWithFormat:@"%@/%zd", cardId, v6];
  }

  return v9;
}

- (void)interaction
{
  OUTLINED_FUNCTION_0(self, a2, a3, 5.778e-34);
  _os_log_error_impl(&dword_24327C000, v5, OS_LOG_TYPE_ERROR, "Invalid intentResponse payload for intentResponseMessageName: %@. Exception: %@", v4, 0x16u);
}

- (void)cardIdentifier
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  selfCopy = self;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_24327C000, log, OS_LOG_TYPE_ERROR, "Card %@ does not have a card identifier. This is a requirement. Category CRCard on SFCard is setting one (%@) on the client's behalf as a workaround", &v3, 0x16u);
}

@end