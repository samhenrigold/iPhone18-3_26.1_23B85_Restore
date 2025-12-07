@interface _SFPBAudioPlaybackCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBAudioPlaybackCardSection)initWithDictionary:(id)dictionary;
- (_SFPBAudioPlaybackCardSection)initWithFacade:(id)facade;
- (_SFPBAudioPlaybackCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPlayCommands:(id)commands;
- (void)addPunchoutOptions:(id)options;
- (void)addStopCommands:(id)commands;
- (void)setPlayCommands:(id)commands;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setStopCommands:(id)commands;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBAudioPlaybackCardSection

- (_SFPBAudioPlaybackCardSection)initWithFacade:(id)facade
{
  v74 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBAudioPlaybackCardSection *)self init];
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

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    punchoutOptions2 = [facadeCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v67 objects:v73 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v68;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v68 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v67 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v67 objects:v73 count:16];
      }

      while (v10);
    }

    [(_SFPBAudioPlaybackCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBAudioPlaybackCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBAudioPlaybackCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBAudioPlaybackCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBAudioPlaybackCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBAudioPlaybackCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBAudioPlaybackCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBAudioPlaybackCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBAudioPlaybackCardSection *)v5 setBackgroundColor:v23];
    }

    if ([facadeCopy hasState])
    {
      -[_SFPBAudioPlaybackCardSection setState:](v5, "setState:", [facadeCopy state]);
    }

    playCommands = [facadeCopy playCommands];
    if (playCommands)
    {
      v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v25 = 0;
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    playCommands2 = [facadeCopy playCommands];
    v27 = [playCommands2 countByEnumeratingWithState:&v63 objects:v72 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v64;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v64 != v29)
          {
            objc_enumerationMutation(playCommands2);
          }

          v31 = [[_SFPBAbstractCommand alloc] initWithFacade:*(*(&v63 + 1) + 8 * j)];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [playCommands2 countByEnumeratingWithState:&v63 objects:v72 count:16];
      }

      while (v28);
    }

    [(_SFPBAudioPlaybackCardSection *)v5 setPlayCommands:v25];
    stopCommands = [facadeCopy stopCommands];
    v58 = v5;
    if (stopCommands)
    {
      v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v33 = 0;
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    stopCommands2 = [facadeCopy stopCommands];
    v35 = [stopCommands2 countByEnumeratingWithState:&v59 objects:v71 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v60;
      do
      {
        for (k = 0; k != v36; ++k)
        {
          if (*v60 != v37)
          {
            objc_enumerationMutation(stopCommands2);
          }

          v39 = [[_SFPBAbstractCommand alloc] initWithFacade:*(*(&v59 + 1) + 8 * k)];
          if (v39)
          {
            [v33 addObject:v39];
          }
        }

        v36 = [stopCommands2 countByEnumeratingWithState:&v59 objects:v71 count:16];
      }

      while (v36);
    }

    v5 = v58;
    [(_SFPBAudioPlaybackCardSection *)v58 setStopCommands:v33];
    detailText = [facadeCopy detailText];

    if (detailText)
    {
      v41 = [_SFPBRichText alloc];
      detailText2 = [facadeCopy detailText];
      v43 = [(_SFPBRichText *)v41 initWithFacade:detailText2];
      [(_SFPBAudioPlaybackCardSection *)v58 setDetailText:v43];
    }

    title = [facadeCopy title];

    if (title)
    {
      v45 = [_SFPBRichText alloc];
      title2 = [facadeCopy title];
      v47 = [(_SFPBRichText *)v45 initWithFacade:title2];
      [(_SFPBAudioPlaybackCardSection *)v58 setTitle:v47];
    }

    subtitle = [facadeCopy subtitle];

    if (subtitle)
    {
      v49 = [_SFPBRichText alloc];
      subtitle2 = [facadeCopy subtitle];
      v51 = [(_SFPBRichText *)v49 initWithFacade:subtitle2];
      [(_SFPBAudioPlaybackCardSection *)v58 setSubtitle:v51];
    }

    thumbnail = [facadeCopy thumbnail];

    if (thumbnail)
    {
      v53 = [_SFPBImage alloc];
      thumbnail2 = [facadeCopy thumbnail];
      v55 = [(_SFPBImage *)v53 initWithFacade:thumbnail2];
      [(_SFPBAudioPlaybackCardSection *)v58 setThumbnail:v55];
    }

    v56 = v58;
  }

  return v5;
}

- (_SFPBAudioPlaybackCardSection)initWithDictionary:(id)dictionary
{
  v80 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v76.receiver = self;
  v76.super_class = _SFPBAudioPlaybackCardSection;
  v5 = [(_SFPBAudioPlaybackCardSection *)&v76 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v72 objects:v79 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v73;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v73 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v72 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBAudioPlaybackCardSection *)v5 addPunchoutOptions:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v72 objects:v79 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBAudioPlaybackCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v58 = v14;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBAudioPlaybackCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v57 = v16;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAudioPlaybackCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAudioPlaybackCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAudioPlaybackCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v62 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBAudioPlaybackCardSection *)v5 setType:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    v61 = v23;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAudioPlaybackCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v60 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBAudioPlaybackCardSection *)v5 setBackgroundColor:v25];
    }

    v54 = v20;
    v55 = v19;
    v56 = v18;
    v26 = [dictionaryCopy objectForKeyedSubscript:@"state"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAudioPlaybackCardSection setState:](v5, "setState:", [v26 intValue]);
    }

    v53 = v26;
    v59 = v6;
    v27 = [dictionaryCopy objectForKeyedSubscript:@"playCommands"];
    objc_opt_class();
    v63 = dictionaryCopy;
    if (objc_opt_isKindOfClass())
    {
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v28 = v27;
      v29 = [v28 countByEnumeratingWithState:&v68 objects:v78 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v69;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v69 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v68 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v34 = [[_SFPBAbstractCommand alloc] initWithDictionary:v33];
              [(_SFPBAudioPlaybackCardSection *)v5 addPlayCommands:v34];
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v68 objects:v78 count:16];
        }

        while (v30);
      }
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"stopCommands"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v36 = v35;
      v37 = [v36 countByEnumeratingWithState:&v64 objects:v77 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v65;
        do
        {
          for (k = 0; k != v38; ++k)
          {
            if (*v65 != v39)
            {
              objc_enumerationMutation(v36);
            }

            v41 = *(*(&v64 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v42 = [[_SFPBAbstractCommand alloc] initWithDictionary:v41];
              [(_SFPBAudioPlaybackCardSection *)v5 addStopCommands:v42];
            }
          }

          v38 = [v36 countByEnumeratingWithState:&v64 objects:v77 count:16];
        }

        while (v38);
      }
    }

    v43 = [dictionaryCopy objectForKeyedSubscript:@"detailText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = [[_SFPBRichText alloc] initWithDictionary:v43];
      [(_SFPBAudioPlaybackCardSection *)v5 setDetailText:v44];
    }

    v45 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = [[_SFPBRichText alloc] initWithDictionary:v45];
      [(_SFPBAudioPlaybackCardSection *)v5 setTitle:v46];
    }

    v47 = [dictionaryCopy objectForKeyedSubscript:@"subtitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = [[_SFPBRichText alloc] initWithDictionary:v47];
      [(_SFPBAudioPlaybackCardSection *)v5 setSubtitle:v48];

      dictionaryCopy = v63;
    }

    v49 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50 = [[_SFPBImage alloc] initWithDictionary:v49];
      [(_SFPBAudioPlaybackCardSection *)v5 setThumbnail:v50];
    }

    v51 = v5;

    dictionaryCopy = v63;
  }

  return v5;
}

- (_SFPBAudioPlaybackCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBAudioPlaybackCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBAudioPlaybackCardSection *)self dictionaryRepresentation];
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
  v72 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBAudioPlaybackCardSection *)self backgroundColor];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBAudioPlaybackCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_detailText)
  {
    detailText = [(_SFPBAudioPlaybackCardSection *)self detailText];
    dictionaryRepresentation2 = [detailText dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"detailText"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"detailText"];
    }
  }

  if (self->_hasBottomPadding)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBAudioPlaybackCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v11 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBAudioPlaybackCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v12 forKeyedSubscript:@"hasTopPadding"];
  }

  if ([(NSArray *)self->_playCommands count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v14 = self->_playCommands;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v65 objects:v71 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v66;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v66 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation3 = [*(*(&v65 + 1) + 8 * i) dictionaryRepresentation];
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

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v65 objects:v71 count:16];
      }

      while (v16);
    }

    [dictionary setObject:array forKeyedSubscript:@"playCommands"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v22 = self->_punchoutOptions;
    v23 = [(NSArray *)v22 countByEnumeratingWithState:&v61 objects:v70 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v62;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v62 != v25)
          {
            objc_enumerationMutation(v22);
          }

          dictionaryRepresentation4 = [*(*(&v61 + 1) + 8 * j) dictionaryRepresentation];
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

        v24 = [(NSArray *)v22 countByEnumeratingWithState:&v61 objects:v70 count:16];
      }

      while (v24);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerDismissText];
    v30 = [punchoutPickerDismissText copy];
    [dictionary setObject:v30 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerTitle];
    v32 = [punchoutPickerTitle copy];
    [dictionary setObject:v32 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBAudioPlaybackCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v34 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v34 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_state)
  {
    state = [(_SFPBAudioPlaybackCardSection *)self state];
    if (state >= 6)
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", state];
    }

    else
    {
      v36 = off_1E7ACE580[state];
    }

    [dictionary setObject:v36 forKeyedSubscript:@"state"];
  }

  if ([(NSArray *)self->_stopCommands count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v38 = self->_stopCommands;
    v39 = [(NSArray *)v38 countByEnumeratingWithState:&v57 objects:v69 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v58;
      do
      {
        for (k = 0; k != v40; ++k)
        {
          if (*v58 != v41)
          {
            objc_enumerationMutation(v38);
          }

          dictionaryRepresentation5 = [*(*(&v57 + 1) + 8 * k) dictionaryRepresentation];
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

        v40 = [(NSArray *)v38 countByEnumeratingWithState:&v57 objects:v69 count:16];
      }

      while (v40);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"stopCommands"];
  }

  if (self->_subtitle)
  {
    subtitle = [(_SFPBAudioPlaybackCardSection *)self subtitle];
    dictionaryRepresentation6 = [subtitle dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"subtitle"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"subtitle"];
    }
  }

  if (self->_thumbnail)
  {
    thumbnail = [(_SFPBAudioPlaybackCardSection *)self thumbnail];
    dictionaryRepresentation7 = [thumbnail dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"thumbnail"];
    }
  }

  if (self->_title)
  {
    title = [(_SFPBAudioPlaybackCardSection *)self title];
    dictionaryRepresentation8 = [title dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"title"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"title"];
    }
  }

  if (self->_type)
  {
    type = [(_SFPBAudioPlaybackCardSection *)self type];
    v55 = [type copy];
    [dictionary setObject:v55 forKeyedSubscript:@"type"];
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

  v9 = [(NSString *)self->_type hash];
  v10 = 2654435761 * self->_separatorStyle;
  v11 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ [(_SFPBColor *)self->_backgroundColor hash]^ (2654435761 * self->_state);
  v12 = [(NSArray *)self->_playCommands hash];
  v13 = v12 ^ [(NSArray *)self->_stopCommands hash];
  v14 = v13 ^ [(_SFPBRichText *)self->_detailText hash];
  v15 = v14 ^ [(_SFPBRichText *)self->_title hash];
  v16 = v15 ^ [(_SFPBRichText *)self->_subtitle hash];
  return v11 ^ v16 ^ [(_SFPBImage *)self->_thumbnail hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_62;
  }

  punchoutOptions = [(_SFPBAudioPlaybackCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_61;
  }

  punchoutOptions3 = [(_SFPBAudioPlaybackCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBAudioPlaybackCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_61;
  }

  punchoutPickerTitle = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_61;
  }

  punchoutPickerDismissText = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_62;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_62;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_62;
  }

  punchoutOptions = [(_SFPBAudioPlaybackCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_61;
  }

  type = [(_SFPBAudioPlaybackCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBAudioPlaybackCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_62;
  }

  punchoutOptions = [(_SFPBAudioPlaybackCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_61;
  }

  backgroundColor = [(_SFPBAudioPlaybackCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBAudioPlaybackCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  state = self->_state;
  if (state != [equalCopy state])
  {
    goto LABEL_62;
  }

  punchoutOptions = [(_SFPBAudioPlaybackCardSection *)self playCommands];
  punchoutOptions2 = [equalCopy playCommands];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_61;
  }

  playCommands = [(_SFPBAudioPlaybackCardSection *)self playCommands];
  if (playCommands)
  {
    v38 = playCommands;
    playCommands2 = [(_SFPBAudioPlaybackCardSection *)self playCommands];
    playCommands3 = [equalCopy playCommands];
    v41 = [playCommands2 isEqual:playCommands3];

    if (!v41)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBAudioPlaybackCardSection *)self stopCommands];
  punchoutOptions2 = [equalCopy stopCommands];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_61;
  }

  stopCommands = [(_SFPBAudioPlaybackCardSection *)self stopCommands];
  if (stopCommands)
  {
    v43 = stopCommands;
    stopCommands2 = [(_SFPBAudioPlaybackCardSection *)self stopCommands];
    stopCommands3 = [equalCopy stopCommands];
    v46 = [stopCommands2 isEqual:stopCommands3];

    if (!v46)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBAudioPlaybackCardSection *)self detailText];
  punchoutOptions2 = [equalCopy detailText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_61;
  }

  detailText = [(_SFPBAudioPlaybackCardSection *)self detailText];
  if (detailText)
  {
    v48 = detailText;
    detailText2 = [(_SFPBAudioPlaybackCardSection *)self detailText];
    detailText3 = [equalCopy detailText];
    v51 = [detailText2 isEqual:detailText3];

    if (!v51)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBAudioPlaybackCardSection *)self title];
  punchoutOptions2 = [equalCopy title];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_61;
  }

  title = [(_SFPBAudioPlaybackCardSection *)self title];
  if (title)
  {
    v53 = title;
    title2 = [(_SFPBAudioPlaybackCardSection *)self title];
    title3 = [equalCopy title];
    v56 = [title2 isEqual:title3];

    if (!v56)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBAudioPlaybackCardSection *)self subtitle];
  punchoutOptions2 = [equalCopy subtitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_61;
  }

  subtitle = [(_SFPBAudioPlaybackCardSection *)self subtitle];
  if (subtitle)
  {
    v58 = subtitle;
    subtitle2 = [(_SFPBAudioPlaybackCardSection *)self subtitle];
    subtitle3 = [equalCopy subtitle];
    v61 = [subtitle2 isEqual:subtitle3];

    if (!v61)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBAudioPlaybackCardSection *)self thumbnail];
  punchoutOptions2 = [equalCopy thumbnail];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_61:

    goto LABEL_62;
  }

  thumbnail = [(_SFPBAudioPlaybackCardSection *)self thumbnail];
  if (!thumbnail)
  {

LABEL_65:
    v67 = 1;
    goto LABEL_63;
  }

  v63 = thumbnail;
  thumbnail2 = [(_SFPBAudioPlaybackCardSection *)self thumbnail];
  thumbnail3 = [equalCopy thumbnail];
  v66 = [thumbnail2 isEqual:thumbnail3];

  if (v66)
  {
    goto LABEL_65;
  }

LABEL_62:
  v67 = 0;
LABEL_63:

  return v67;
}

- (void)writeTo:(id)to
{
  v43 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBAudioPlaybackCardSection *)self punchoutOptions];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = [punchoutOptions countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    do
    {
      v9 = 0;
      do
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(punchoutOptions);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [punchoutOptions countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v7);
  }

  punchoutPickerTitle = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBAudioPlaybackCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBAudioPlaybackCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBAudioPlaybackCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  type = [(_SFPBAudioPlaybackCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBAudioPlaybackCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBAudioPlaybackCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBAudioPlaybackCardSection *)self state])
  {
    PBDataWriterWriteInt32Field();
  }

  playCommands = [(_SFPBAudioPlaybackCardSection *)self playCommands];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = [playCommands countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v33;
    do
    {
      v18 = 0;
      do
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(playCommands);
        }

        PBDataWriterWriteSubmessage();
        ++v18;
      }

      while (v16 != v18);
      v16 = [playCommands countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v16);
  }

  stopCommands = [(_SFPBAudioPlaybackCardSection *)self stopCommands];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = [stopCommands countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v29;
    do
    {
      v23 = 0;
      do
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(stopCommands);
        }

        PBDataWriterWriteSubmessage();
        ++v23;
      }

      while (v21 != v23);
      v21 = [stopCommands countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v21);
  }

  detailText = [(_SFPBAudioPlaybackCardSection *)self detailText];
  if (detailText)
  {
    PBDataWriterWriteSubmessage();
  }

  title = [(_SFPBAudioPlaybackCardSection *)self title];
  if (title)
  {
    PBDataWriterWriteSubmessage();
  }

  subtitle = [(_SFPBAudioPlaybackCardSection *)self subtitle];
  if (subtitle)
  {
    PBDataWriterWriteSubmessage();
  }

  thumbnail = [(_SFPBAudioPlaybackCardSection *)self thumbnail];
  if (thumbnail)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)addStopCommands:(id)commands
{
  commandsCopy = commands;
  stopCommands = self->_stopCommands;
  v8 = commandsCopy;
  if (!stopCommands)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_stopCommands;
    self->_stopCommands = array;

    commandsCopy = v8;
    stopCommands = self->_stopCommands;
  }

  [(NSArray *)stopCommands addObject:commandsCopy];
}

- (void)setStopCommands:(id)commands
{
  self->_stopCommands = [commands copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)addPlayCommands:(id)commands
{
  commandsCopy = commands;
  playCommands = self->_playCommands;
  v8 = commandsCopy;
  if (!playCommands)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_playCommands;
    self->_playCommands = array;

    commandsCopy = v8;
    playCommands = self->_playCommands;
  }

  [(NSArray *)playCommands addObject:commandsCopy];
}

- (void)setPlayCommands:(id)commands
{
  self->_playCommands = [commands copy];

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