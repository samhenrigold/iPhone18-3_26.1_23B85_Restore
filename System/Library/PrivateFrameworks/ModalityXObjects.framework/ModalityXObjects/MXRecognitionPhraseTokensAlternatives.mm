@interface MXRecognitionPhraseTokensAlternatives
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTokPhrases:(id)phrases;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MXRecognitionPhraseTokensAlternatives

- (void)addTokPhrases:(id)phrases
{
  phrasesCopy = phrases;
  tokPhrases = self->_tokPhrases;
  v8 = phrasesCopy;
  if (!tokPhrases)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_tokPhrases;
    self->_tokPhrases = v6;

    phrasesCopy = v8;
    tokPhrases = self->_tokPhrases;
  }

  [(NSMutableArray *)tokPhrases addObject:phrasesCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXRecognitionPhraseTokensAlternatives;
  v4 = [(MXRecognitionPhraseTokensAlternatives *)&v8 description];
  dictionaryRepresentation = [(MXRecognitionPhraseTokensAlternatives *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_tokPhrases count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_tokPhrases, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_tokPhrases;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"tok_phrases"];
  }

  if (*&self->_has)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasUnsuggestedAlternatives];
    [dictionary setObject:v11 forKey:@"has_unsuggested_alternatives"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_tokPhrases;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(MXRecognitionPhraseTokensAlternatives *)self tokPhrasesCount])
  {
    [toCopy clearTokPhrases];
    tokPhrasesCount = [(MXRecognitionPhraseTokensAlternatives *)self tokPhrasesCount];
    if (tokPhrasesCount)
    {
      v5 = tokPhrasesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(MXRecognitionPhraseTokensAlternatives *)self tokPhrasesAtIndex:i];
        [toCopy addTokPhrases:v7];
      }
    }
  }

  if (*&self->_has)
  {
    toCopy[16] = self->_hasUnsuggestedAlternatives;
    toCopy[20] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_tokPhrases;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) copyWithZone:{zone, v13}];
        [v5 addTokPhrases:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (*&self->_has)
  {
    v5[16] = self->_hasUnsuggestedAlternatives;
    v5[20] |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  tokPhrases = self->_tokPhrases;
  if (tokPhrases | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)tokPhrases isEqual:?])
    {
      goto LABEL_6;
    }
  }

  v6 = (*(equalCopy + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0)
    {
LABEL_6:
      v6 = 0;
      goto LABEL_7;
    }

    if (self->_hasUnsuggestedAlternatives)
    {
      if ((*(equalCopy + 16) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (*(equalCopy + 16))
    {
      goto LABEL_6;
    }

    v6 = 1;
  }

LABEL_7:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_tokPhrases hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_hasUnsuggestedAlternatives;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(fromCopy + 1);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(MXRecognitionPhraseTokensAlternatives *)self addTokPhrases:*(*(&v10 + 1) + 8 * v9++), v10];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 20))
  {
    self->_hasUnsuggestedAlternatives = *(fromCopy + 16);
    *&self->_has |= 1u;
  }
}

@end