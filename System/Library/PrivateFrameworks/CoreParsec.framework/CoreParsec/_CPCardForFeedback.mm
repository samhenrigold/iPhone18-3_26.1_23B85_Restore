@interface _CPCardForFeedback
- (BOOL)isEqual:(id)equal;
- (_CPCardForFeedback)initWithFacade:(id)facade;
- (void)addCardSections:(id)sections;
- (void)setCardSections:(id)sections;
- (void)writeTo:(id)to;
@end

@implementation _CPCardForFeedback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  cardSections = [(_CPCardForFeedback *)self cardSections];
  cardSections2 = [equalCopy cardSections];
  if ((cardSections != 0) == (cardSections2 == 0))
  {
    goto LABEL_11;
  }

  cardSections3 = [(_CPCardForFeedback *)self cardSections];
  if (cardSections3)
  {
    v8 = cardSections3;
    cardSections4 = [(_CPCardForFeedback *)self cardSections];
    cardSections5 = [equalCopy cardSections];
    v11 = [cardSections4 isEqual:cardSections5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  cardSections = [(_CPCardForFeedback *)self fbr];
  cardSections2 = [equalCopy fbr];
  if ((cardSections != 0) != (cardSections2 == 0))
  {
    v12 = [(_CPCardForFeedback *)self fbr];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_CPCardForFeedback *)self fbr];
    v15 = [equalCopy fbr];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_cardSections;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = [(_CPCardForFeedback *)self fbr];

  if (v10)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)addCardSections:(id)sections
{
  sectionsCopy = sections;
  cardSections = self->_cardSections;
  v8 = sectionsCopy;
  if (!cardSections)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_cardSections;
    self->_cardSections = array;

    sectionsCopy = v8;
    cardSections = self->_cardSections;
  }

  [(NSArray *)cardSections addObject:sectionsCopy];
}

- (void)setCardSections:(id)sections
{
  self->_cardSections = [sections mutableCopy];

  MEMORY[0x1EEE66BB8]();
}

- (_CPCardForFeedback)initWithFacade:(id)facade
{
  v24 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v22.receiver = self;
  v22.super_class = _CPCardForFeedback;
  v5 = [(_CPCardForFeedback *)&v22 init];
  if (v5)
  {
    cardSections = [facadeCopy cardSections];
    if (cardSections)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    cardSections2 = [facadeCopy cardSections];
    v9 = [cardSections2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(cardSections2);
          }

          v13 = [[_CPCardSectionForFeedback alloc] initWithFacade:*(*(&v18 + 1) + 8 * i)];
          [v7 addObject:v13];
        }

        v10 = [cardSections2 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v10);
    }

    [(_CPCardForFeedback *)v5 setCardSections:v7];
    v14 = [facadeCopy fbr];

    if (v14)
    {
      v15 = [facadeCopy fbr];
      [(_CPCardForFeedback *)v5 setFbr:v15];
    }

    v16 = v5;
  }

  return v5;
}

@end