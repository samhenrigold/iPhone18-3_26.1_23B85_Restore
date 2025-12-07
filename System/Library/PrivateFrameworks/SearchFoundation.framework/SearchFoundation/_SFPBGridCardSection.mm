@interface _SFPBGridCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBGridCardSection)initWithDictionary:(id)dictionary;
- (_SFPBGridCardSection)initWithFacade:(id)facade;
- (_SFPBGridCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCardSections:(id)sections;
- (void)addPunchoutOptions:(id)options;
- (void)setCardSections:(id)sections;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBGridCardSection

- (_SFPBGridCardSection)initWithFacade:(id)facade
{
  v44 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBGridCardSection *)self init];
  if (v5)
  {
    punchoutOptions = [facadeCopy punchoutOptions];
    if (punchoutOptions)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    punchoutOptions2 = [facadeCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v39;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v39 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v38 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v10);
    }

    [(_SFPBGridCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBGridCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBGridCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBGridCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBGridCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBGridCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBGridCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBGridCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBGridCardSection *)v5 setBackgroundColor:v23];
    }

    cardSections = [facadeCopy cardSections];
    if (cardSections)
    {
      v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v25 = 0;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    cardSections2 = [facadeCopy cardSections];
    v27 = [cardSections2 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v35;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v35 != v29)
          {
            objc_enumerationMutation(cardSections2);
          }

          v31 = [[_SFPBCardSection alloc] initWithFacade:*(*(&v34 + 1) + 8 * j)];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [cardSections2 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v28);
    }

    [(_SFPBGridCardSection *)v5 setCardSections:v25];
    v32 = v5;
  }

  return v5;
}

- (_SFPBGridCardSection)initWithDictionary:(id)dictionary
{
  v57 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v54.receiver = self;
  v54.super_class = _SFPBGridCardSection;
  v5 = [(_SFPBGridCardSection *)&v54 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v7 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v50 objects:v56 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v51;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v51 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v50 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[_SFPBPunchout alloc] initWithDictionary:v13];
              [(_SFPBGridCardSection *)v5 addPunchoutOptions:v14];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v50 objects:v56 count:16];
        }

        while (v10);
      }

      v6 = v7;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(_SFPBGridCardSection *)v5 setPunchoutPickerTitle:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(_SFPBGridCardSection *)v5 setPunchoutPickerDismissText:v18];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBGridCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v45 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBGridCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBGridCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v21 BOOLValue]);
    }

    v42 = v21;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v44 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = v19;
      v24 = [v44 copy];
      [(_SFPBGridCardSection *)v5 setType:v24];

      v19 = v23;
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBGridCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v25 intValue]);
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v43 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBColor alloc] initWithDictionary:v26];
      [(_SFPBGridCardSection *)v5 setBackgroundColor:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"cardSections"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = v25;
      v39 = v19;
      v40 = v15;
      v41 = v6;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v29 = v28;
      v30 = [v29 countByEnumeratingWithState:&v46 objects:v55 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v47;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v47 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v46 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v35 = [[_SFPBCardSection alloc] initWithDictionary:v34];
              [(_SFPBGridCardSection *)v5 addCardSections:v35];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v46 objects:v55 count:16];
        }

        while (v31);
      }

      v15 = v40;
      v6 = v41;
      v19 = v39;
      v25 = v38;
    }

    v36 = v5;
  }

  return v5;
}

- (_SFPBGridCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBGridCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBGridCardSection *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v45 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBGridCardSection *)self backgroundColor];
    dictionaryRepresentation = [backgroundColor dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"backgroundColor"];
    }
  }

  if (self->_canBeHidden)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBGridCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if ([(NSArray *)self->_cardSections count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v9 = self->_cardSections;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v40;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation2 = [*(*(&v39 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v11);
    }

    [dictionary setObject:array forKeyedSubscript:@"cardSections"];
  }

  if (self->_hasBottomPadding)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBGridCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v16 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBGridCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v17 forKeyedSubscript:@"hasTopPadding"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v19 = self->_punchoutOptions;
    v20 = [(NSArray *)v19 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v36;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v36 != v22)
          {
            objc_enumerationMutation(v19);
          }

          dictionaryRepresentation3 = [*(*(&v35 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array2 addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null3];
          }
        }

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v21);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBGridCardSection *)self punchoutPickerDismissText];
    v27 = [punchoutPickerDismissText copy];
    [dictionary setObject:v27 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBGridCardSection *)self punchoutPickerTitle];
    v29 = [punchoutPickerTitle copy];
    [dictionary setObject:v29 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBGridCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v31 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v31 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_type)
  {
    type = [(_SFPBGridCardSection *)self type];
    v33 = [type copy];
    [dictionary setObject:v33 forKeyedSubscript:@"type"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_punchoutOptions hash];
  v4 = [(NSString *)self->_punchoutPickerTitle hash];
  v5 = [(NSString *)self->_punchoutPickerDismissText hash];
  if (self->_canBeHidden)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  if (self->_hasTopPadding)
  {
    v7 = 2654435761;
  }

  else
  {
    v7 = 0;
  }

  if (self->_hasBottomPadding)
  {
    v8 = 2654435761;
  }

  else
  {
    v8 = 0;
  }

  v9 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSString *)self->_type hash]^ (2654435761 * self->_separatorStyle);
  v10 = [(_SFPBColor *)self->_backgroundColor hash];
  return v9 ^ v10 ^ [(NSArray *)self->_cardSections hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  punchoutOptions = [(_SFPBGridCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_35;
  }

  punchoutOptions3 = [(_SFPBGridCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBGridCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBGridCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_35;
  }

  punchoutPickerTitle = [(_SFPBGridCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBGridCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBGridCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_35;
  }

  punchoutPickerDismissText = [(_SFPBGridCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBGridCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_36;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_36;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_36;
  }

  punchoutOptions = [(_SFPBGridCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_35;
  }

  type = [(_SFPBGridCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBGridCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_36;
  }

  punchoutOptions = [(_SFPBGridCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_35;
  }

  backgroundColor = [(_SFPBGridCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBGridCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBGridCardSection *)self cardSections];
  punchoutOptions2 = [equalCopy cardSections];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_35:

    goto LABEL_36;
  }

  cardSections = [(_SFPBGridCardSection *)self cardSections];
  if (!cardSections)
  {

LABEL_39:
    v41 = 1;
    goto LABEL_37;
  }

  v37 = cardSections;
  cardSections2 = [(_SFPBGridCardSection *)self cardSections];
  cardSections3 = [equalCopy cardSections];
  v40 = [cardSections2 isEqual:cardSections3];

  if (v40)
  {
    goto LABEL_39;
  }

LABEL_36:
  v41 = 0;
LABEL_37:

  return v41;
}

- (void)writeTo:(id)to
{
  v29 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBGridCardSection *)self punchoutOptions];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [punchoutOptions countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(punchoutOptions);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [punchoutOptions countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  punchoutPickerTitle = [(_SFPBGridCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBGridCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBGridCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBGridCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBGridCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  type = [(_SFPBGridCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBGridCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBGridCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  cardSections = [(_SFPBGridCardSection *)self cardSections];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = [cardSections countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(cardSections);
        }

        PBDataWriterWriteSubmessage();
        ++v18;
      }

      while (v16 != v18);
      v16 = [cardSections countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v16);
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
  self->_cardSections = [sections copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setType:(id)type
{
  self->_type = [type copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setPunchoutPickerDismissText:(id)text
{
  self->_punchoutPickerDismissText = [text copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setPunchoutPickerTitle:(id)title
{
  self->_punchoutPickerTitle = [title copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)addPunchoutOptions:(id)options
{
  optionsCopy = options;
  punchoutOptions = self->_punchoutOptions;
  v8 = optionsCopy;
  if (!punchoutOptions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_punchoutOptions;
    self->_punchoutOptions = array;

    optionsCopy = v8;
    punchoutOptions = self->_punchoutOptions;
  }

  [(NSArray *)punchoutOptions addObject:optionsCopy];
}

- (void)setPunchoutOptions:(id)options
{
  self->_punchoutOptions = [options copy];

  MEMORY[0x1EEE66BB8]();
}

@end