@interface _SFPBTableRowCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBTableRowCardSection)initWithDictionary:(id)dictionary;
- (_SFPBTableRowCardSection)initWithFacade:(id)facade;
- (_SFPBTableRowCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addData:(id)data;
- (void)addPunchoutOptions:(id)options;
- (void)addRichData:(id)data;
- (void)setData:(id)data;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setRichData:(id)data;
- (void)setTabGroupIdentifier:(id)identifier;
- (void)setTableIdentifier:(id)identifier;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBTableRowCardSection

- (_SFPBTableRowCardSection)initWithFacade:(id)facade
{
  v66 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBTableRowCardSection *)self init];
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

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    punchoutOptions2 = [facadeCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v59 objects:v65 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v60;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v60 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v59 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v59 objects:v65 count:16];
      }

      while (v10);
    }

    [(_SFPBTableRowCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBTableRowCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBTableRowCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBTableRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBTableRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBTableRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBTableRowCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBTableRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBTableRowCardSection *)v5 setBackgroundColor:v23];
    }

    richData = [facadeCopy richData];
    if (richData)
    {
      v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v25 = 0;
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    richData2 = [facadeCopy richData];
    v27 = [richData2 countByEnumeratingWithState:&v55 objects:v64 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v56;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v56 != v29)
          {
            objc_enumerationMutation(richData2);
          }

          v31 = [[_SFPBRichText alloc] initWithFacade:*(*(&v55 + 1) + 8 * j)];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [richData2 countByEnumeratingWithState:&v55 objects:v64 count:16];
      }

      while (v28);
    }

    [(_SFPBTableRowCardSection *)v5 setRichDatas:v25];
    tableIdentifier = [facadeCopy tableIdentifier];

    if (tableIdentifier)
    {
      tableIdentifier2 = [facadeCopy tableIdentifier];
      [(_SFPBTableRowCardSection *)v5 setTableIdentifier:tableIdentifier2];
    }

    alignmentSchema = [facadeCopy alignmentSchema];

    if (alignmentSchema)
    {
      v35 = [_SFPBTableAlignmentSchema alloc];
      alignmentSchema2 = [facadeCopy alignmentSchema];
      v37 = [(_SFPBTableAlignmentSchema *)v35 initWithFacade:alignmentSchema2];
      [(_SFPBTableRowCardSection *)v5 setAlignmentSchema:v37];
    }

    data = [facadeCopy data];
    v50 = v5;
    if (data)
    {
      v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v39 = 0;
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    data2 = [facadeCopy data];
    v41 = [data2 countByEnumeratingWithState:&v51 objects:v63 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v52;
      do
      {
        for (k = 0; k != v42; ++k)
        {
          if (*v52 != v43)
          {
            objc_enumerationMutation(data2);
          }

          v45 = [[_SFPBFormattedText alloc] initWithFacade:*(*(&v51 + 1) + 8 * k)];
          if (v45)
          {
            [v39 addObject:v45];
          }
        }

        v42 = [data2 countByEnumeratingWithState:&v51 objects:v63 count:16];
      }

      while (v42);
    }

    v5 = v50;
    [(_SFPBTableRowCardSection *)v50 setDatas:v39];
    if ([facadeCopy hasIsSubHeader])
    {
      -[_SFPBTableRowCardSection setIsSubHeader:](v50, "setIsSubHeader:", [facadeCopy isSubHeader]);
    }

    tabGroupIdentifier = [facadeCopy tabGroupIdentifier];

    if (tabGroupIdentifier)
    {
      tabGroupIdentifier2 = [facadeCopy tabGroupIdentifier];
      [(_SFPBTableRowCardSection *)v50 setTabGroupIdentifier:tabGroupIdentifier2];
    }

    if ([facadeCopy hasReducedRowHeight])
    {
      -[_SFPBTableRowCardSection setReducedRowHeight:](v50, "setReducedRowHeight:", [facadeCopy reducedRowHeight]);
    }

    if ([facadeCopy hasVerticalAlign])
    {
      -[_SFPBTableRowCardSection setVerticalAlign:](v50, "setVerticalAlign:", [facadeCopy verticalAlign]);
    }

    if ([facadeCopy hasAlignRowsToHeader])
    {
      -[_SFPBTableRowCardSection setAlignRowsToHeader:](v50, "setAlignRowsToHeader:", [facadeCopy alignRowsToHeader]);
    }

    v48 = v50;
  }

  return v5;
}

- (_SFPBTableRowCardSection)initWithDictionary:(id)dictionary
{
  v83 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v79.receiver = self;
  v79.super_class = _SFPBTableRowCardSection;
  v5 = [(_SFPBTableRowCardSection *)&v79 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    v66 = v6;
    if (objc_opt_isKindOfClass())
    {
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v75 objects:v82 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v76;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v76 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v75 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBTableRowCardSection *)v5 addPunchoutOptions:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v75 objects:v82 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBTableRowCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBTableRowCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    v65 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v64 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v63 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v62 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBTableRowCardSection *)v5 setType:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    v61 = v23;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v60 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBTableRowCardSection *)v5 setBackgroundColor:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"richData"];
    objc_opt_class();
    v59 = v26;
    v57 = v16;
    if (objc_opt_isKindOfClass())
    {
      v27 = v14;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v28 = v26;
      v29 = [v28 countByEnumeratingWithState:&v71 objects:v81 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v72;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v72 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v71 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v34 = [[_SFPBRichText alloc] initWithDictionary:v33];
              [(_SFPBTableRowCardSection *)v5 addRichData:v34];
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v71 objects:v81 count:16];
        }

        while (v30);
      }

      v14 = v27;
      v16 = v57;
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"tableIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = [v35 copy];
      [(_SFPBTableRowCardSection *)v5 setTableIdentifier:v36];
    }

    v56 = v35;
    v37 = [dictionaryCopy objectForKeyedSubscript:@"alignmentSchema"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = [[_SFPBTableAlignmentSchema alloc] initWithDictionary:v37];
      [(_SFPBTableRowCardSection *)v5 setAlignmentSchema:v38];
    }

    v39 = [dictionaryCopy objectForKeyedSubscript:{@"data", v37}];
    objc_opt_class();
    v58 = v14;
    if (objc_opt_isKindOfClass())
    {
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v40 = v39;
      v41 = [v40 countByEnumeratingWithState:&v67 objects:v80 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v68;
        do
        {
          for (k = 0; k != v42; ++k)
          {
            if (*v68 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v67 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v46 = [[_SFPBFormattedText alloc] initWithDictionary:v45];
              [(_SFPBTableRowCardSection *)v5 addData:v46];
            }
          }

          v42 = [v40 countByEnumeratingWithState:&v67 objects:v80 count:16];
        }

        while (v42);
      }

      v16 = v57;
    }

    v47 = [dictionaryCopy objectForKeyedSubscript:@"isSubHeader"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableRowCardSection setIsSubHeader:](v5, "setIsSubHeader:", [v47 BOOLValue]);
    }

    v48 = [dictionaryCopy objectForKeyedSubscript:@"tabGroupIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = [v48 copy];
      [(_SFPBTableRowCardSection *)v5 setTabGroupIdentifier:v49];
    }

    v50 = [dictionaryCopy objectForKeyedSubscript:@"reducedRowHeight"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableRowCardSection setReducedRowHeight:](v5, "setReducedRowHeight:", [v50 BOOLValue]);
    }

    v51 = [dictionaryCopy objectForKeyedSubscript:@"verticalAlign"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableRowCardSection setVerticalAlign:](v5, "setVerticalAlign:", [v51 intValue]);
    }

    v52 = [dictionaryCopy objectForKeyedSubscript:@"alignRowsToHeader"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableRowCardSection setAlignRowsToHeader:](v5, "setAlignRowsToHeader:", [v52 BOOLValue]);
    }

    v53 = v5;
  }

  return v5;
}

- (_SFPBTableRowCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBTableRowCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBTableRowCardSection *)self dictionaryRepresentation];
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
  v70 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_alignRowsToHeader)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableRowCardSection alignRowsToHeader](self, "alignRowsToHeader")}];
    [dictionary setObject:v4 forKeyedSubscript:@"alignRowsToHeader"];
  }

  if (self->_alignmentSchema)
  {
    alignmentSchema = [(_SFPBTableRowCardSection *)self alignmentSchema];
    dictionaryRepresentation = [alignmentSchema dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"alignmentSchema"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"alignmentSchema"];
    }
  }

  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBTableRowCardSection *)self backgroundColor];
    dictionaryRepresentation2 = [backgroundColor dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"backgroundColor"];
    }
  }

  if (self->_canBeHidden)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableRowCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v11 forKeyedSubscript:@"canBeHidden"];
  }

  if ([(NSArray *)self->_datas count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v13 = self->_datas;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v63 objects:v69 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v64;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v64 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation3 = [*(*(&v63 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null3];
          }
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v63 objects:v69 count:16];
      }

      while (v15);
    }

    [dictionary setObject:array forKeyedSubscript:@"data"];
  }

  if (self->_hasBottomPadding)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableRowCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v20 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableRowCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v21 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_isSubHeader)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableRowCardSection isSubHeader](self, "isSubHeader")}];
    [dictionary setObject:v22 forKeyedSubscript:@"isSubHeader"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v24 = self->_punchoutOptions;
    v25 = [(NSArray *)v24 countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v60;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v60 != v27)
          {
            objc_enumerationMutation(v24);
          }

          dictionaryRepresentation4 = [*(*(&v59 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation4)
          {
            [array2 addObject:dictionaryRepresentation4];
          }

          else
          {
            null4 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null4];
          }
        }

        v26 = [(NSArray *)v24 countByEnumeratingWithState:&v59 objects:v68 count:16];
      }

      while (v26);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBTableRowCardSection *)self punchoutPickerDismissText];
    v32 = [punchoutPickerDismissText copy];
    [dictionary setObject:v32 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBTableRowCardSection *)self punchoutPickerTitle];
    v34 = [punchoutPickerTitle copy];
    [dictionary setObject:v34 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_reducedRowHeight)
  {
    v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableRowCardSection reducedRowHeight](self, "reducedRowHeight")}];
    [dictionary setObject:v35 forKeyedSubscript:@"reducedRowHeight"];
  }

  if ([(NSArray *)self->_richDatas count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v37 = self->_richDatas;
    v38 = [(NSArray *)v37 countByEnumeratingWithState:&v55 objects:v67 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v56;
      do
      {
        for (k = 0; k != v39; ++k)
        {
          if (*v56 != v40)
          {
            objc_enumerationMutation(v37);
          }

          dictionaryRepresentation5 = [*(*(&v55 + 1) + 8 * k) dictionaryRepresentation];
          if (dictionaryRepresentation5)
          {
            [array3 addObject:dictionaryRepresentation5];
          }

          else
          {
            null5 = [MEMORY[0x1E695DFB0] null];
            [array3 addObject:null5];
          }
        }

        v39 = [(NSArray *)v37 countByEnumeratingWithState:&v55 objects:v67 count:16];
      }

      while (v39);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"richData"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBTableRowCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v45 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v45 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_tabGroupIdentifier)
  {
    tabGroupIdentifier = [(_SFPBTableRowCardSection *)self tabGroupIdentifier];
    v47 = [tabGroupIdentifier copy];
    [dictionary setObject:v47 forKeyedSubscript:@"tabGroupIdentifier"];
  }

  if (self->_tableIdentifier)
  {
    tableIdentifier = [(_SFPBTableRowCardSection *)self tableIdentifier];
    v49 = [tableIdentifier copy];
    [dictionary setObject:v49 forKeyedSubscript:@"tableIdentifier"];
  }

  if (self->_type)
  {
    type = [(_SFPBTableRowCardSection *)self type];
    v51 = [type copy];
    [dictionary setObject:v51 forKeyedSubscript:@"type"];
  }

  if (self->_verticalAlign)
  {
    verticalAlign = [(_SFPBTableRowCardSection *)self verticalAlign];
    if ((verticalAlign + 1) >= 3)
    {
      v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", verticalAlign];
    }

    else
    {
      v53 = off_1E7ACE4B0[(verticalAlign + 1)];
    }

    [dictionary setObject:v53 forKeyedSubscript:@"verticalAlign"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v24 = [(NSArray *)self->_punchoutOptions hash];
  v23 = [(NSString *)self->_punchoutPickerTitle hash];
  v3 = [(NSString *)self->_punchoutPickerDismissText hash];
  if (self->_canBeHidden)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

  v21 = v4;
  v22 = v3;
  if (self->_hasTopPadding)
  {
    v5 = 2654435761;
  }

  else
  {
    v5 = 0;
  }

  if (self->_hasBottomPadding)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSString *)self->_type hash:v6];
  v8 = 2654435761 * self->_separatorStyle;
  v9 = [(_SFPBColor *)self->_backgroundColor hash];
  v10 = [(NSArray *)self->_richDatas hash];
  v11 = [(NSString *)self->_tableIdentifier hash];
  v12 = [(_SFPBTableAlignmentSchema *)self->_alignmentSchema hash];
  v13 = [(NSArray *)self->_datas hash];
  if (self->_isSubHeader)
  {
    v14 = 2654435761;
  }

  else
  {
    v14 = 0;
  }

  v15 = [(NSString *)self->_tabGroupIdentifier hash];
  if (self->_reducedRowHeight)
  {
    v16 = 2654435761;
  }

  else
  {
    v16 = 0;
  }

  if (self->_alignRowsToHeader)
  {
    v17 = 2654435761;
  }

  else
  {
    v17 = 0;
  }

  return v23 ^ v24 ^ v22 ^ v21 ^ v20 ^ v19 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ (2654435761 * self->_verticalAlign) ^ v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_57;
  }

  punchoutOptions = [(_SFPBTableRowCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_56;
  }

  punchoutOptions3 = [(_SFPBTableRowCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBTableRowCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBTableRowCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_56;
  }

  punchoutPickerTitle = [(_SFPBTableRowCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBTableRowCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBTableRowCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_56;
  }

  punchoutPickerDismissText = [(_SFPBTableRowCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBTableRowCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_57;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_57;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_57;
  }

  punchoutOptions = [(_SFPBTableRowCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_56;
  }

  type = [(_SFPBTableRowCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBTableRowCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_57;
  }

  punchoutOptions = [(_SFPBTableRowCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_56;
  }

  backgroundColor = [(_SFPBTableRowCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBTableRowCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBTableRowCardSection *)self richDatas];
  punchoutOptions2 = [equalCopy richDatas];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_56;
  }

  richDatas = [(_SFPBTableRowCardSection *)self richDatas];
  if (richDatas)
  {
    v37 = richDatas;
    richDatas2 = [(_SFPBTableRowCardSection *)self richDatas];
    richDatas3 = [equalCopy richDatas];
    v40 = [richDatas2 isEqual:richDatas3];

    if (!v40)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBTableRowCardSection *)self tableIdentifier];
  punchoutOptions2 = [equalCopy tableIdentifier];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_56;
  }

  tableIdentifier = [(_SFPBTableRowCardSection *)self tableIdentifier];
  if (tableIdentifier)
  {
    v42 = tableIdentifier;
    tableIdentifier2 = [(_SFPBTableRowCardSection *)self tableIdentifier];
    tableIdentifier3 = [equalCopy tableIdentifier];
    v45 = [tableIdentifier2 isEqual:tableIdentifier3];

    if (!v45)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBTableRowCardSection *)self alignmentSchema];
  punchoutOptions2 = [equalCopy alignmentSchema];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_56;
  }

  alignmentSchema = [(_SFPBTableRowCardSection *)self alignmentSchema];
  if (alignmentSchema)
  {
    v47 = alignmentSchema;
    alignmentSchema2 = [(_SFPBTableRowCardSection *)self alignmentSchema];
    alignmentSchema3 = [equalCopy alignmentSchema];
    v50 = [alignmentSchema2 isEqual:alignmentSchema3];

    if (!v50)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBTableRowCardSection *)self datas];
  punchoutOptions2 = [equalCopy datas];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_56;
  }

  datas = [(_SFPBTableRowCardSection *)self datas];
  if (datas)
  {
    v52 = datas;
    datas2 = [(_SFPBTableRowCardSection *)self datas];
    datas3 = [equalCopy datas];
    v55 = [datas2 isEqual:datas3];

    if (!v55)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  isSubHeader = self->_isSubHeader;
  if (isSubHeader != [equalCopy isSubHeader])
  {
    goto LABEL_57;
  }

  punchoutOptions = [(_SFPBTableRowCardSection *)self tabGroupIdentifier];
  punchoutOptions2 = [equalCopy tabGroupIdentifier];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_56:

    goto LABEL_57;
  }

  tabGroupIdentifier = [(_SFPBTableRowCardSection *)self tabGroupIdentifier];
  if (tabGroupIdentifier)
  {
    v58 = tabGroupIdentifier;
    tabGroupIdentifier2 = [(_SFPBTableRowCardSection *)self tabGroupIdentifier];
    tabGroupIdentifier3 = [equalCopy tabGroupIdentifier];
    v61 = [tabGroupIdentifier2 isEqual:tabGroupIdentifier3];

    if (!v61)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  reducedRowHeight = self->_reducedRowHeight;
  if (reducedRowHeight == [equalCopy reducedRowHeight])
  {
    verticalAlign = self->_verticalAlign;
    if (verticalAlign == [equalCopy verticalAlign])
    {
      alignRowsToHeader = self->_alignRowsToHeader;
      v62 = alignRowsToHeader == [equalCopy alignRowsToHeader];
      goto LABEL_58;
    }
  }

LABEL_57:
  v62 = 0;
LABEL_58:

  return v62;
}

- (void)writeTo:(id)to
{
  v42 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBTableRowCardSection *)self punchoutOptions];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = [punchoutOptions countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v36;
    do
    {
      v9 = 0;
      do
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(punchoutOptions);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [punchoutOptions countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v7);
  }

  punchoutPickerTitle = [(_SFPBTableRowCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBTableRowCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBTableRowCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBTableRowCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBTableRowCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  type = [(_SFPBTableRowCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBTableRowCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBTableRowCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  richDatas = [(_SFPBTableRowCardSection *)self richDatas];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v15 = [richDatas countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
    do
    {
      v18 = 0;
      do
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(richDatas);
        }

        PBDataWriterWriteSubmessage();
        ++v18;
      }

      while (v16 != v18);
      v16 = [richDatas countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v16);
  }

  tableIdentifier = [(_SFPBTableRowCardSection *)self tableIdentifier];
  if (tableIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  alignmentSchema = [(_SFPBTableRowCardSection *)self alignmentSchema];
  if (alignmentSchema)
  {
    PBDataWriterWriteSubmessage();
  }

  datas = [(_SFPBTableRowCardSection *)self datas];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v22 = [datas countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v28;
    do
    {
      v25 = 0;
      do
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(datas);
        }

        PBDataWriterWriteSubmessage();
        ++v25;
      }

      while (v23 != v25);
      v23 = [datas countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v23);
  }

  if ([(_SFPBTableRowCardSection *)self isSubHeader])
  {
    PBDataWriterWriteBOOLField();
  }

  tabGroupIdentifier = [(_SFPBTableRowCardSection *)self tabGroupIdentifier];
  if (tabGroupIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBTableRowCardSection *)self reducedRowHeight])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBTableRowCardSection *)self verticalAlign])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBTableRowCardSection *)self alignRowsToHeader])
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setTabGroupIdentifier:(id)identifier
{
  self->_tabGroupIdentifier = [identifier copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)addData:(id)data
{
  dataCopy = data;
  datas = self->_datas;
  v8 = dataCopy;
  if (!datas)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_datas;
    self->_datas = array;

    dataCopy = v8;
    datas = self->_datas;
  }

  [(NSArray *)datas addObject:dataCopy];
}

- (void)setData:(id)data
{
  self->_datas = [data copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setTableIdentifier:(id)identifier
{
  self->_tableIdentifier = [identifier copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)addRichData:(id)data
{
  dataCopy = data;
  richDatas = self->_richDatas;
  v8 = dataCopy;
  if (!richDatas)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_richDatas;
    self->_richDatas = array;

    dataCopy = v8;
    richDatas = self->_richDatas;
  }

  [(NSArray *)richDatas addObject:dataCopy];
}

- (void)setRichData:(id)data
{
  self->_richDatas = [data copy];

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