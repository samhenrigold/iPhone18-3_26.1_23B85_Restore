@interface _SFPBRFFactItemHeroNumberCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFFactItemHeroNumberCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFFactItemHeroNumberCardSection)initWithFacade:(id)facade;
- (_SFPBRFFactItemHeroNumberCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addText_2:(id)text_2;
- (void)addText_3:(id)text_3;
- (void)setText_2:(id)text_2;
- (void)setText_3:(id)text_3;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFFactItemHeroNumberCardSection

- (_SFPBRFFactItemHeroNumberCardSection)initWithFacade:(id)facade
{
  v50 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBRFFactItemHeroNumberCardSection *)self init];
  if (v5)
  {
    number = [facadeCopy number];

    if (number)
    {
      v7 = [_SFPBRFTextProperty alloc];
      number2 = [facadeCopy number];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:number2];
      [(_SFPBRFFactItemHeroNumberCardSection *)v5 setNumber:v9];
    }

    unit = [facadeCopy unit];

    if (unit)
    {
      v11 = [_SFPBRFTextProperty alloc];
      unit2 = [facadeCopy unit];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:unit2];
      [(_SFPBRFFactItemHeroNumberCardSection *)v5 setUnit:v13];
    }

    text = [facadeCopy text];
    if (text)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v15 = 0;
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    text2 = [facadeCopy text];
    v17 = [text2 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v45;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v45 != v19)
          {
            objc_enumerationMutation(text2);
          }

          v21 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v44 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [text2 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v18);
    }

    [(_SFPBRFFactItemHeroNumberCardSection *)v5 setText_2s:v15];
    text3 = [facadeCopy text];
    if (text3)
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v23 = 0;
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    text4 = [facadeCopy text];
    v25 = [text4 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v41;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v41 != v27)
          {
            objc_enumerationMutation(text4);
          }

          v29 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v40 + 1) + 8 * j)];
          if (v29)
          {
            [v23 addObject:v29];
          }
        }

        v26 = [text4 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v26);
    }

    [(_SFPBRFFactItemHeroNumberCardSection *)v5 setText_3s:v23];
    text5 = [facadeCopy text];

    if (text5)
    {
      v31 = [_SFPBRFTextProperty alloc];
      text6 = [facadeCopy text];
      v33 = [(_SFPBRFTextProperty *)v31 initWithFacade:text6];
      [(_SFPBRFFactItemHeroNumberCardSection *)v5 setText_4:v33];
    }

    text7 = [facadeCopy text];

    if (text7)
    {
      v35 = [_SFPBRFTextProperty alloc];
      text8 = [facadeCopy text];
      v37 = [(_SFPBRFTextProperty *)v35 initWithFacade:text8];
      [(_SFPBRFFactItemHeroNumberCardSection *)v5 setText_5:v37];
    }

    v38 = v5;
  }

  return v5;
}

- (_SFPBRFFactItemHeroNumberCardSection)initWithDictionary:(id)dictionary
{
  v45 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v42.receiver = self;
  v42.super_class = _SFPBRFFactItemHeroNumberCardSection;
  v5 = [(_SFPBRFFactItemHeroNumberCardSection *)&v42 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"number"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFFactItemHeroNumberCardSection *)v5 setNumber:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"unit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFFactItemHeroNumberCardSection *)v5 setUnit:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    v33 = v6;
    v32 = v10;
    if (objc_opt_isKindOfClass())
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v39;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v39 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v38 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [[_SFPBRFTextProperty alloc] initWithDictionary:v16];
              [(_SFPBRFFactItemHeroNumberCardSection *)v5 addText_2:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v38 objects:v44 count:16];
        }

        while (v13);
      }

      v6 = v33;
      v10 = v32;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v34 objects:v43 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v35;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v35 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v34 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = [[_SFPBRFTextProperty alloc] initWithDictionary:v24];
              [(_SFPBRFFactItemHeroNumberCardSection *)v5 addText_3:v25];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v34 objects:v43 count:16];
        }

        while (v21);
      }

      v6 = v33;
      v10 = v32;
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBRFTextProperty alloc] initWithDictionary:v26];
      [(_SFPBRFFactItemHeroNumberCardSection *)v5 setText_4:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"text5"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBRFTextProperty alloc] initWithDictionary:v28];
      [(_SFPBRFFactItemHeroNumberCardSection *)v5 setText_5:v29];
    }

    v30 = v5;
  }

  return v5;
}

- (_SFPBRFFactItemHeroNumberCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFFactItemHeroNumberCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFFactItemHeroNumberCardSection *)self dictionaryRepresentation];
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
  v43 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_number)
  {
    number = [(_SFPBRFFactItemHeroNumberCardSection *)self number];
    dictionaryRepresentation = [number dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"number"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"number"];
    }
  }

  if ([(NSArray *)self->_text_2s count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v8 = self->_text_2s;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v38;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation2 = [*(*(&v37 + 1) + 8 * i) dictionaryRepresentation];
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

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"text2"];
  }

  if ([(NSArray *)self->_text_3s count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v16 = self->_text_3s;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v34;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(v16);
          }

          dictionaryRepresentation3 = [*(*(&v33 + 1) + 8 * j) dictionaryRepresentation];
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

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v18);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"text3"];
  }

  if (self->_text_4)
  {
    text = [(_SFPBRFFactItemHeroNumberCardSection *)self text];
    dictionaryRepresentation4 = [text dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"text4"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"text4"];
    }
  }

  if (self->_text_5)
  {
    text2 = [(_SFPBRFFactItemHeroNumberCardSection *)self text];
    dictionaryRepresentation5 = [text2 dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"text5"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"text5"];
    }
  }

  if (self->_unit)
  {
    unit = [(_SFPBRFFactItemHeroNumberCardSection *)self unit];
    dictionaryRepresentation6 = [unit dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"unit"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"unit"];
    }
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_number hash];
  v4 = [(_SFPBRFTextProperty *)self->_unit hash]^ v3;
  v5 = [(NSArray *)self->_text_2s hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_text_3s hash];
  v7 = [(_SFPBRFTextProperty *)self->_text_4 hash];
  return v6 ^ v7 ^ [(_SFPBRFTextProperty *)self->_text_5 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  number = [(_SFPBRFFactItemHeroNumberCardSection *)self number];
  number2 = [equalCopy number];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_31;
  }

  number3 = [(_SFPBRFFactItemHeroNumberCardSection *)self number];
  if (number3)
  {
    v8 = number3;
    number4 = [(_SFPBRFFactItemHeroNumberCardSection *)self number];
    number5 = [equalCopy number];
    v11 = [number4 isEqual:number5];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  number = [(_SFPBRFFactItemHeroNumberCardSection *)self unit];
  number2 = [equalCopy unit];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_31;
  }

  unit = [(_SFPBRFFactItemHeroNumberCardSection *)self unit];
  if (unit)
  {
    v13 = unit;
    unit2 = [(_SFPBRFFactItemHeroNumberCardSection *)self unit];
    unit3 = [equalCopy unit];
    v16 = [unit2 isEqual:unit3];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  number = [(_SFPBRFFactItemHeroNumberCardSection *)self text_2s];
  number2 = [equalCopy text_2s];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_31;
  }

  text_2s = [(_SFPBRFFactItemHeroNumberCardSection *)self text_2s];
  if (text_2s)
  {
    v18 = text_2s;
    text_2s2 = [(_SFPBRFFactItemHeroNumberCardSection *)self text_2s];
    text_2s3 = [equalCopy text_2s];
    v21 = [text_2s2 isEqual:text_2s3];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  number = [(_SFPBRFFactItemHeroNumberCardSection *)self text_3s];
  number2 = [equalCopy text_3s];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_31;
  }

  text_3s = [(_SFPBRFFactItemHeroNumberCardSection *)self text_3s];
  if (text_3s)
  {
    v23 = text_3s;
    text_3s2 = [(_SFPBRFFactItemHeroNumberCardSection *)self text_3s];
    text_3s3 = [equalCopy text_3s];
    v26 = [text_3s2 isEqual:text_3s3];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  number = [(_SFPBRFFactItemHeroNumberCardSection *)self text];
  number2 = [equalCopy text];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_31;
  }

  text = [(_SFPBRFFactItemHeroNumberCardSection *)self text];
  if (text)
  {
    v28 = text;
    text2 = [(_SFPBRFFactItemHeroNumberCardSection *)self text];
    text3 = [equalCopy text];
    v31 = [text2 isEqual:text3];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  number = [(_SFPBRFFactItemHeroNumberCardSection *)self text];
  number2 = [equalCopy text];
  if ((number != 0) != (number2 == 0))
  {
    text4 = [(_SFPBRFFactItemHeroNumberCardSection *)self text];
    if (!text4)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = text4;
    text5 = [(_SFPBRFFactItemHeroNumberCardSection *)self text];
    text6 = [equalCopy text];
    v36 = [text5 isEqual:text6];

    if (v36)
    {
      goto LABEL_35;
    }
  }

  else
  {
LABEL_31:
  }

LABEL_32:
  v37 = 0;
LABEL_33:

  return v37;
}

- (void)writeTo:(id)to
{
  v29 = *MEMORY[0x1E69E9840];
  toCopy = to;
  number = [(_SFPBRFFactItemHeroNumberCardSection *)self number];
  if (number)
  {
    PBDataWriterWriteSubmessage();
  }

  unit = [(_SFPBRFFactItemHeroNumberCardSection *)self unit];
  if (unit)
  {
    PBDataWriterWriteSubmessage();
  }

  text_2s = [(_SFPBRFFactItemHeroNumberCardSection *)self text_2s];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [text_2s countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(text_2s);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [text_2s countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }

  text_3s = [(_SFPBRFFactItemHeroNumberCardSection *)self text_3s];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = [text_3s countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(text_3s);
        }

        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [text_3s countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  text = [(_SFPBRFFactItemHeroNumberCardSection *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  text2 = [(_SFPBRFFactItemHeroNumberCardSection *)self text];
  if (text2)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)addText_3:(id)text_3
{
  text_3Copy = text_3;
  text_3s = self->_text_3s;
  v8 = text_3Copy;
  if (!text_3s)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_text_3s;
    self->_text_3s = array;

    text_3Copy = v8;
    text_3s = self->_text_3s;
  }

  [(NSArray *)text_3s addObject:text_3Copy];
}

- (void)setText_3:(id)text_3
{
  self->_text_3s = [text_3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)addText_2:(id)text_2
{
  text_2Copy = text_2;
  text_2s = self->_text_2s;
  v8 = text_2Copy;
  if (!text_2s)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_text_2s;
    self->_text_2s = array;

    text_2Copy = v8;
    text_2s = self->_text_2s;
  }

  [(NSArray *)text_2s addObject:text_2Copy];
}

- (void)setText_2:(id)text_2
{
  self->_text_2s = [text_2 copy];

  MEMORY[0x1EEE66BB8]();
}

@end