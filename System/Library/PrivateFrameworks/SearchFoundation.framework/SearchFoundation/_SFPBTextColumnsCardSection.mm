@interface _SFPBTextColumnsCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBTextColumnsCardSection)initWithDictionary:(id)dictionary;
- (_SFPBTextColumnsCardSection)initWithFacade:(id)facade;
- (_SFPBTextColumnsCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addColumns:(id)columns;
- (void)addPunchoutOptions:(id)options;
- (void)setColumns:(id)columns;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setTitle:(id)title;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBTextColumnsCardSection

- (_SFPBTextColumnsCardSection)initWithFacade:(id)facade
{
  v46 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBTextColumnsCardSection *)self init];
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

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    punchoutOptions2 = [facadeCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v41;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v41 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v40 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v10);
    }

    [(_SFPBTextColumnsCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBTextColumnsCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBTextColumnsCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBTextColumnsCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBTextColumnsCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBTextColumnsCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBTextColumnsCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBTextColumnsCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBTextColumnsCardSection *)v5 setBackgroundColor:v23];
    }

    title = [facadeCopy title];

    if (title)
    {
      title2 = [facadeCopy title];
      [(_SFPBTextColumnsCardSection *)v5 setTitle:title2];
    }

    if ([facadeCopy hasTitleWeight])
    {
      -[_SFPBTextColumnsCardSection setTitleWeight:](v5, "setTitleWeight:", [facadeCopy titleWeight]);
    }

    columns = [facadeCopy columns];
    if (columns)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v27 = 0;
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    columns2 = [facadeCopy columns];
    v29 = [columns2 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v37;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v37 != v31)
          {
            objc_enumerationMutation(columns2);
          }

          v33 = [[_SFPBTextColumn alloc] initWithFacade:*(*(&v36 + 1) + 8 * j)];
          if (v33)
          {
            [v27 addObject:v33];
          }
        }

        v30 = [columns2 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v30);
    }

    [(_SFPBTextColumnsCardSection *)v5 setColumns:v27];
    v34 = v5;
  }

  return v5;
}

- (_SFPBTextColumnsCardSection)initWithDictionary:(id)dictionary
{
  v62 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v59.receiver = self;
  v59.super_class = _SFPBTextColumnsCardSection;
  v5 = [(_SFPBTextColumnsCardSection *)&v59 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v55 objects:v61 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v56;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v56 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v55 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBTextColumnsCardSection *)v5 addPunchoutOptions:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v55 objects:v61 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBTextColumnsCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBTextColumnsCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    v50 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTextColumnsCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v49 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTextColumnsCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v48 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTextColumnsCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v47 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBTextColumnsCardSection *)v5 setType:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTextColumnsCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v46 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = v23;
      v26 = v16;
      v27 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBTextColumnsCardSection *)v5 setBackgroundColor:v27];

      v16 = v26;
      v23 = v25;
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    v45 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [v28 copy];
      [(_SFPBTextColumnsCardSection *)v5 setTitle:v29];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"titleWeight"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTextColumnsCardSection setTitleWeight:](v5, "setTitleWeight:", [v30 unsignedIntValue]);
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"columns"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = v30;
      v42 = v23;
      v43 = v14;
      v44 = v6;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v32 = v31;
      v33 = [v32 countByEnumeratingWithState:&v51 objects:v60 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v52;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v52 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v51 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v38 = [[_SFPBTextColumn alloc] initWithDictionary:v37];
              [(_SFPBTextColumnsCardSection *)v5 addColumns:v38];
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v51 objects:v60 count:16];
        }

        while (v34);
      }

      v14 = v43;
      v6 = v44;
      v23 = v42;
      v30 = v41;
    }

    v39 = v5;
  }

  return v5;
}

- (_SFPBTextColumnsCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBTextColumnsCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBTextColumnsCardSection *)self dictionaryRepresentation];
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
  v48 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBTextColumnsCardSection *)self backgroundColor];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTextColumnsCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if ([(NSArray *)self->_columns count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v9 = self->_columns;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v43;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v43 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation2 = [*(*(&v42 + 1) + 8 * i) dictionaryRepresentation];
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

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v11);
    }

    [dictionary setObject:array forKeyedSubscript:@"columns"];
  }

  if (self->_hasBottomPadding)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTextColumnsCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v16 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTextColumnsCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v17 forKeyedSubscript:@"hasTopPadding"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v19 = self->_punchoutOptions;
    v20 = [(NSArray *)v19 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v39;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v39 != v22)
          {
            objc_enumerationMutation(v19);
          }

          dictionaryRepresentation3 = [*(*(&v38 + 1) + 8 * j) dictionaryRepresentation];
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

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v21);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBTextColumnsCardSection *)self punchoutPickerDismissText];
    v27 = [punchoutPickerDismissText copy];
    [dictionary setObject:v27 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBTextColumnsCardSection *)self punchoutPickerTitle];
    v29 = [punchoutPickerTitle copy];
    [dictionary setObject:v29 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBTextColumnsCardSection *)self separatorStyle];
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

  if (self->_title)
  {
    title = [(_SFPBTextColumnsCardSection *)self title];
    v33 = [title copy];
    [dictionary setObject:v33 forKeyedSubscript:@"title"];
  }

  if (self->_titleWeight)
  {
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBTextColumnsCardSection titleWeight](self, "titleWeight")}];
    [dictionary setObject:v34 forKeyedSubscript:@"titleWeight"];
  }

  if (self->_type)
  {
    type = [(_SFPBTextColumnsCardSection *)self type];
    v36 = [type copy];
    [dictionary setObject:v36 forKeyedSubscript:@"type"];
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
  v11 = v3 ^ v14 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  v12 = v10 ^ [(NSString *)self->_title hash]^ (2654435761 * self->_titleWeight);
  return v11 ^ v12 ^ [(NSArray *)self->_columns hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  punchoutOptions = [(_SFPBTextColumnsCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_41;
  }

  punchoutOptions3 = [(_SFPBTextColumnsCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBTextColumnsCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBTextColumnsCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_41;
  }

  punchoutPickerTitle = [(_SFPBTextColumnsCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBTextColumnsCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBTextColumnsCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_41;
  }

  punchoutPickerDismissText = [(_SFPBTextColumnsCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBTextColumnsCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_42;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_42;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_42;
  }

  punchoutOptions = [(_SFPBTextColumnsCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_41;
  }

  type = [(_SFPBTextColumnsCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBTextColumnsCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_42;
  }

  punchoutOptions = [(_SFPBTextColumnsCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_41;
  }

  backgroundColor = [(_SFPBTextColumnsCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBTextColumnsCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBTextColumnsCardSection *)self title];
  punchoutOptions2 = [equalCopy title];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_41;
  }

  title = [(_SFPBTextColumnsCardSection *)self title];
  if (title)
  {
    v37 = title;
    title2 = [(_SFPBTextColumnsCardSection *)self title];
    title3 = [equalCopy title];
    v40 = [title2 isEqual:title3];

    if (!v40)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  titleWeight = self->_titleWeight;
  if (titleWeight != [equalCopy titleWeight])
  {
    goto LABEL_42;
  }

  punchoutOptions = [(_SFPBTextColumnsCardSection *)self columns];
  punchoutOptions2 = [equalCopy columns];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_41:

    goto LABEL_42;
  }

  columns = [(_SFPBTextColumnsCardSection *)self columns];
  if (!columns)
  {

LABEL_45:
    v47 = 1;
    goto LABEL_43;
  }

  v43 = columns;
  columns2 = [(_SFPBTextColumnsCardSection *)self columns];
  columns3 = [equalCopy columns];
  v46 = [columns2 isEqual:columns3];

  if (v46)
  {
    goto LABEL_45;
  }

LABEL_42:
  v47 = 0;
LABEL_43:

  return v47;
}

- (void)writeTo:(id)to
{
  v30 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBTextColumnsCardSection *)self punchoutOptions];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [punchoutOptions countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(punchoutOptions);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [punchoutOptions countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  punchoutPickerTitle = [(_SFPBTextColumnsCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBTextColumnsCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBTextColumnsCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBTextColumnsCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBTextColumnsCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  type = [(_SFPBTextColumnsCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBTextColumnsCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBTextColumnsCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  title = [(_SFPBTextColumnsCardSection *)self title];
  if (title)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBTextColumnsCardSection *)self titleWeight])
  {
    PBDataWriterWriteUint32Field();
  }

  columns = [(_SFPBTextColumnsCardSection *)self columns];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = [columns countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(columns);
        }

        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [columns countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v17);
  }
}

- (void)addColumns:(id)columns
{
  columnsCopy = columns;
  columns = self->_columns;
  v8 = columnsCopy;
  if (!columns)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_columns;
    self->_columns = array;

    columnsCopy = v8;
    columns = self->_columns;
  }

  [(NSArray *)columns addObject:columnsCopy];
}

- (void)setColumns:(id)columns
{
  self->_columns = [columns copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setTitle:(id)title
{
  self->_title = [title copy];

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