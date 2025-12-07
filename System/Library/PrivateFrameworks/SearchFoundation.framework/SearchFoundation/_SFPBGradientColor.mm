@interface _SFPBGradientColor
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBGradientColor)initWithDictionary:(id)dictionary;
- (_SFPBGradientColor)initWithFacade:(id)facade;
- (_SFPBGradientColor)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)addColors:(id)colors;
- (void)setColors:(id)colors;
- (void)writeTo:(id)to;
@end

@implementation _SFPBGradientColor

- (_SFPBGradientColor)initWithFacade:(id)facade
{
  v21 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBGradientColor *)self init];
  if (v5)
  {
    colors = [facadeCopy colors];
    if (colors)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    colors2 = [facadeCopy colors];
    v9 = [colors2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(colors2);
          }

          v13 = [[_SFPBColor alloc] initWithFacade:*(*(&v16 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [colors2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [(_SFPBGradientColor *)v5 setColors:v7];
    if ([facadeCopy hasGradientType])
    {
      -[_SFPBGradientColor setGradientType:](v5, "setGradientType:", [facadeCopy gradientType]);
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBGradientColor)initWithDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = _SFPBGradientColor;
  v5 = [(_SFPBGradientColor *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"colors"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          v11 = 0;
          do
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v18 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [_SFPBColor alloc];
              v14 = [(_SFPBColor *)v13 initWithDictionary:v12, v18];
              [(_SFPBGradientColor *)v5 addColors:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v9);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"gradientType", v18}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBGradientColor setGradientType:](v5, "setGradientType:", [v15 intValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (_SFPBGradientColor)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBGradientColor *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBGradientColor *)self dictionaryRepresentation];
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
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_colors count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_colors;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"colors"];
  }

  if (self->_gradientType)
  {
    gradientType = [(_SFPBGradientColor *)self gradientType];
    if (gradientType)
    {
      if (gradientType == 1)
      {
        v13 = @"1";
      }

      else
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", gradientType];
      }
    }

    else
    {
      v13 = @"0";
    }

    [dictionary setObject:v13 forKeyedSubscript:@"gradientType"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    colors = [(_SFPBGradientColor *)self colors];
    colors2 = [equalCopy colors];
    v7 = colors2;
    if ((colors != 0) != (colors2 == 0))
    {
      colors3 = [(_SFPBGradientColor *)self colors];
      if (!colors3)
      {

LABEL_10:
        gradientType = self->_gradientType;
        v13 = gradientType == [equalCopy gradientType];
        goto LABEL_8;
      }

      v9 = colors3;
      colors4 = [(_SFPBGradientColor *)self colors];
      colors5 = [equalCopy colors];
      v12 = [colors4 isEqual:colors5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  colors = [(_SFPBGradientColor *)self colors];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [colors countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(colors);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [colors countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if ([(_SFPBGradientColor *)self gradientType])
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)addColors:(id)colors
{
  colorsCopy = colors;
  colors = self->_colors;
  v8 = colorsCopy;
  if (!colors)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_colors;
    self->_colors = array;

    colorsCopy = v8;
    colors = self->_colors;
  }

  [(NSArray *)colors addObject:colorsCopy];
}

- (void)setColors:(id)colors
{
  self->_colors = [colors copy];

  MEMORY[0x1EEE66BB8]();
}

@end