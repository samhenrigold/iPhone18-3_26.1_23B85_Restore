@interface _SFPBImagesCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBImagesCardSection)initWithDictionary:(id)dictionary;
- (_SFPBImagesCardSection)initWithFacade:(id)facade;
- (_SFPBImagesCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addImages:(id)images;
- (void)addPunchoutOptions:(id)options;
- (void)setImages:(id)images;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBImagesCardSection

- (_SFPBImagesCardSection)initWithFacade:(id)facade
{
  v44 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBImagesCardSection *)self init];
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

    [(_SFPBImagesCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBImagesCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBImagesCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBImagesCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBImagesCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBImagesCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBImagesCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBImagesCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBImagesCardSection *)v5 setBackgroundColor:v23];
    }

    images = [facadeCopy images];
    if (images)
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
    images2 = [facadeCopy images];
    v27 = [images2 countByEnumeratingWithState:&v34 objects:v42 count:16];
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
            objc_enumerationMutation(images2);
          }

          v31 = [[_SFPBImage alloc] initWithFacade:*(*(&v34 + 1) + 8 * j)];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [images2 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v28);
    }

    [(_SFPBImagesCardSection *)v5 setImages:v25];
    if ([facadeCopy hasBorderless])
    {
      -[_SFPBImagesCardSection setBorderless:](v5, "setBorderless:", [facadeCopy borderless]);
    }

    v32 = v5;
  }

  return v5;
}

- (_SFPBImagesCardSection)initWithDictionary:(id)dictionary
{
  v58 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v55.receiver = self;
  v55.super_class = _SFPBImagesCardSection;
  v5 = [(_SFPBImagesCardSection *)&v55 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v7 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v51 objects:v57 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v52;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v52 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v51 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[_SFPBPunchout alloc] initWithDictionary:v13];
              [(_SFPBImagesCardSection *)v5 addPunchoutOptions:v14];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v51 objects:v57 count:16];
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
      [(_SFPBImagesCardSection *)v5 setPunchoutPickerTitle:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(_SFPBImagesCardSection *)v5 setPunchoutPickerDismissText:v18];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBImagesCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBImagesCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v46 = v21;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBImagesCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v21 BOOLValue]);
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v45 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = v20;
      v24 = [v45 copy];
      [(_SFPBImagesCardSection *)v5 setType:v24];

      v20 = v23;
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBImagesCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v25 intValue]);
    }

    v43 = v25;
    v26 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v44 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBColor alloc] initWithDictionary:v26];
      [(_SFPBImagesCardSection *)v5 setBackgroundColor:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"images"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = v20;
      v40 = v17;
      v41 = v15;
      v42 = v6;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v29 = v28;
      v30 = [v29 countByEnumeratingWithState:&v47 objects:v56 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v48;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v48 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v47 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v35 = [[_SFPBImage alloc] initWithDictionary:v34];
              [(_SFPBImagesCardSection *)v5 addImages:v35];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v47 objects:v56 count:16];
        }

        while (v31);
      }

      v15 = v41;
      v6 = v42;
      v17 = v40;
      v20 = v39;
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"borderless"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBImagesCardSection setBorderless:](v5, "setBorderless:", [v36 BOOLValue]);
    }

    v37 = v5;
  }

  return v5;
}

- (_SFPBImagesCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBImagesCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBImagesCardSection *)self dictionaryRepresentation];
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
  v46 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBImagesCardSection *)self backgroundColor];
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

  if (self->_borderless)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBImagesCardSection borderless](self, "borderless")}];
    [dictionary setObject:v7 forKeyedSubscript:@"borderless"];
  }

  if (self->_canBeHidden)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBImagesCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v8 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_hasBottomPadding)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBImagesCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v9 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBImagesCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v10 forKeyedSubscript:@"hasTopPadding"];
  }

  if ([(NSArray *)self->_images count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v12 = self->_images;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v41;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v41 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation2 = [*(*(&v40 + 1) + 8 * i) dictionaryRepresentation];
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

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v14);
    }

    [dictionary setObject:array forKeyedSubscript:@"images"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v20 = self->_punchoutOptions;
    v21 = [(NSArray *)v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v37;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v37 != v23)
          {
            objc_enumerationMutation(v20);
          }

          dictionaryRepresentation3 = [*(*(&v36 + 1) + 8 * j) dictionaryRepresentation];
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

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v22);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBImagesCardSection *)self punchoutPickerDismissText];
    v28 = [punchoutPickerDismissText copy];
    [dictionary setObject:v28 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBImagesCardSection *)self punchoutPickerTitle];
    v30 = [punchoutPickerTitle copy];
    [dictionary setObject:v30 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBImagesCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v32 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v32 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_type)
  {
    type = [(_SFPBImagesCardSection *)self type];
    v34 = [type copy];
    [dictionary setObject:v34 forKeyedSubscript:@"type"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v14 = [(NSArray *)self->_punchoutOptions hash];
  v3 = [(NSString *)self->_punchoutPickerTitle hash];
  v4 = [(NSString *)self->_punchoutPickerDismissText hash];
  if (self->_canBeHidden)
  {
    v5 = 2654435761;
  }

  else
  {
    v5 = 0;
  }

  if (self->_hasTopPadding)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  if (self->_hasBottomPadding)
  {
    v7 = 2654435761;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSString *)self->_type hash];
  v9 = 2654435761 * self->_separatorStyle;
  v10 = [(_SFPBColor *)self->_backgroundColor hash];
  v11 = [(NSArray *)self->_images hash];
  if (self->_borderless)
  {
    v12 = 2654435761;
  }

  else
  {
    v12 = 0;
  }

  return v3 ^ v14 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  punchoutOptions = [(_SFPBImagesCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_35;
  }

  punchoutOptions3 = [(_SFPBImagesCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBImagesCardSection *)self punchoutOptions];
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

  punchoutOptions = [(_SFPBImagesCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_35;
  }

  punchoutPickerTitle = [(_SFPBImagesCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBImagesCardSection *)self punchoutPickerTitle];
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

  punchoutOptions = [(_SFPBImagesCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_35;
  }

  punchoutPickerDismissText = [(_SFPBImagesCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBImagesCardSection *)self punchoutPickerDismissText];
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

  punchoutOptions = [(_SFPBImagesCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_35;
  }

  type = [(_SFPBImagesCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBImagesCardSection *)self type];
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

  punchoutOptions = [(_SFPBImagesCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_35;
  }

  backgroundColor = [(_SFPBImagesCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBImagesCardSection *)self backgroundColor];
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

  punchoutOptions = [(_SFPBImagesCardSection *)self images];
  punchoutOptions2 = [equalCopy images];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_35:

    goto LABEL_36;
  }

  images = [(_SFPBImagesCardSection *)self images];
  if (!images)
  {

LABEL_39:
    borderless = self->_borderless;
    v41 = borderless == [equalCopy borderless];
    goto LABEL_37;
  }

  v37 = images;
  images2 = [(_SFPBImagesCardSection *)self images];
  images3 = [equalCopy images];
  v40 = [images2 isEqual:images3];

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
  punchoutOptions = [(_SFPBImagesCardSection *)self punchoutOptions];
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

  punchoutPickerTitle = [(_SFPBImagesCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBImagesCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBImagesCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBImagesCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBImagesCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  type = [(_SFPBImagesCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBImagesCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBImagesCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  images = [(_SFPBImagesCardSection *)self images];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = [images countByEnumeratingWithState:&v19 objects:v27 count:16];
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
          objc_enumerationMutation(images);
        }

        PBDataWriterWriteSubmessage();
        ++v18;
      }

      while (v16 != v18);
      v16 = [images countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v16);
  }

  if ([(_SFPBImagesCardSection *)self borderless])
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)addImages:(id)images
{
  imagesCopy = images;
  images = self->_images;
  v8 = imagesCopy;
  if (!images)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_images;
    self->_images = array;

    imagesCopy = v8;
    images = self->_images;
  }

  [(NSArray *)images addObject:imagesCopy];
}

- (void)setImages:(id)images
{
  self->_images = [images copy];

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