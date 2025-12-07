@interface IFGraphicSymbolOverridesParser
- (CGSize)_parseSymbolOffsetFromRawItem:(id)item;
- (IFGraphicSymbolOverridesParser)initWithRawOverrides:(id)overrides;
- (float)_parseSymbolSizeAdjusterFromRawItem:(id)item;
- (id)_parseSymbolContent:(id)content;
- (id)parse;
- (int64_t)_parseShapeFromRawShape:(id)shape;
- (int64_t)_parseSymbolWeightFromRawItem:(id)item;
- (unint64_t)_parseSymbolSizeFromRawItem:(id)item;
- (void)parse;
@end

@implementation IFGraphicSymbolOverridesParser

- (IFGraphicSymbolOverridesParser)initWithRawOverrides:(id)overrides
{
  overridesCopy = overrides;
  v9.receiver = self;
  v9.super_class = IFGraphicSymbolOverridesParser;
  v5 = [(IFGraphicSymbolOverridesParser *)&v9 init];
  if (v5)
  {
    v6 = [overridesCopy copy];
    rawOverrides = v5->_rawOverrides;
    v5->_rawOverrides = v6;
  }

  return v5;
}

- (id)parse
{
  rawOverrides = [(IFGraphicSymbolOverridesParser *)self rawOverrides];
  v4 = [rawOverrides _IF_numberForKey:@"version"];

  intValue = [v4 intValue];
  if (intValue == 2)
  {
    rawOverrides2 = [(IFGraphicSymbolOverridesParser *)self rawOverrides];
    v7 = [rawOverrides2 _IF_dictionaryForKey:@"symbols"];
    v8 = [(IFGraphicSymbolOverridesParser *)self _parseSymbolContent:v7];
  }

  else
  {
    v9 = IFDefaultLog(intValue);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [IFGraphicSymbolOverridesParser parse];
    }

    v8 = 0;
  }

  return v8;
}

- (id)_parseSymbolContent:(id)content
{
  v50 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  v24 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = contentCopy;
  v26 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v26)
  {
    v25 = *v44;
    do
    {
      v5 = 0;
      do
      {
        if (*v44 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v5;
        v28 = *(*(&v43 + 1) + 8 * v5);
        v6 = [obj _IF_dictionaryForKey:?];
        v7 = objc_opt_new();
        v29 = v6;
        v8 = [v6 _IF_dictionaryForKey:@"shapes"];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v33 = v8;
        v32 = [v8 countByEnumeratingWithState:&v39 objects:v48 count:16];
        if (v32)
        {
          v31 = *v40;
          do
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v40 != v31)
              {
                objc_enumerationMutation(v33);
              }

              v10 = *(*(&v39 + 1) + 8 * i);
              v11 = [(IFGraphicSymbolOverridesParser *)self _parseShapeFromRawShape:v10];
              if (v11)
              {
                v12 = v11;
                v34 = i;
                v13 = [v33 _IF_dictionaryForKey:v10];
                v35 = 0u;
                v36 = 0u;
                v37 = 0u;
                v38 = 0u;
                v14 = [v13 countByEnumeratingWithState:&v35 objects:v47 count:16];
                if (!v14)
                {
                  goto LABEL_26;
                }

                v15 = v14;
                v16 = *v36;
                while (1)
                {
                  for (j = 0; j != v15; ++j)
                  {
                    if (*v36 != v16)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v18 = *(*(&v35 + 1) + 8 * j);
                    intValue = [v18 intValue];
                    v20 = [v18 compare:@"default"];
                    if (v20)
                    {
                      if (![v18 compare:@"enclosure_sizes"])
                      {
                        continue;
                      }
                    }

                    else
                    {
                      intValue = 0x7FFFFFFFLL;
                    }

                    v21 = [v13 _IF_dictionaryForKey:v18];
                    v22 = [[IFGraphicSymbolOverride alloc] initWithShape:v12 enclosureDimension:intValue];
                    [(IFGraphicSymbolOverride *)v22 setIsDefault:v20 == 0];
                    [(IFGraphicSymbolOverride *)v22 setSymbolWeight:[(IFGraphicSymbolOverridesParser *)self _parseSymbolWeightFromRawItem:v21]];
                    [(IFGraphicSymbolOverride *)v22 setSymbolSize:[(IFGraphicSymbolOverridesParser *)self _parseSymbolSizeFromRawItem:v21]];
                    [(IFGraphicSymbolOverridesParser *)self _parseSymbolOffsetFromRawItem:v21];
                    [(IFGraphicSymbolOverride *)v22 setOffset:?];
                    [(IFGraphicSymbolOverridesParser *)self _parseSymbolSizeAdjusterFromRawItem:v21];
                    [(IFGraphicSymbolOverride *)v22 setPointSizeAdjuster:?];
                    if (v22)
                    {
                      [v7 addObject:v22];
                    }
                  }

                  v15 = [v13 countByEnumeratingWithState:&v35 objects:v47 count:16];
                  if (!v15)
                  {
LABEL_26:

                    i = v34;
                    break;
                  }
                }
              }
            }

            v32 = [v33 countByEnumeratingWithState:&v39 objects:v48 count:16];
          }

          while (v32);
        }

        if (v7)
        {
          [v24 setObject:v7 forKey:v28];
        }

        v5 = v30 + 1;
      }

      while (v30 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v26);
  }

  return v24;
}

- (int64_t)_parseShapeFromRawShape:(id)shape
{
  shapeCopy = shape;
  if ([shapeCopy caseInsensitiveCompare:@"rounded_rect"])
  {
    if ([shapeCopy caseInsensitiveCompare:@"capsule"])
    {
      v4 = [shapeCopy caseInsensitiveCompare:@"circle"];
      if (v4)
      {
        v5 = IFDefaultLog(v4);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          [IFGraphicSymbolOverridesParser _parseShapeFromRawShape:];
        }

        v6 = 0;
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v6 = 3;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (int64_t)_parseSymbolWeightFromRawItem:(id)item
{
  v3 = [item _IF_stringForKey:@"symbol_weight"];
  v4 = v3;
  if (v3)
  {
    if (![v3 caseInsensitiveCompare:@"Ultralight"])
    {
      v7 = 1;
      goto LABEL_24;
    }

    if (![v4 caseInsensitiveCompare:@"Thin"])
    {
      v7 = 2;
      goto LABEL_24;
    }

    if (![v4 caseInsensitiveCompare:@"Light"])
    {
      v7 = 3;
      goto LABEL_24;
    }

    if (![v4 caseInsensitiveCompare:@"Regular"])
    {
      v7 = 4;
      goto LABEL_24;
    }

    if (![v4 caseInsensitiveCompare:@"Medium"])
    {
      v7 = 5;
      goto LABEL_24;
    }

    if (![v4 caseInsensitiveCompare:@"Semibold"])
    {
      v7 = 6;
      goto LABEL_24;
    }

    if (![v4 caseInsensitiveCompare:@"Bold"])
    {
      v7 = 7;
      goto LABEL_24;
    }

    if (![v4 caseInsensitiveCompare:@"Heavy"])
    {
      v7 = 8;
      goto LABEL_24;
    }

    v5 = [v4 caseInsensitiveCompare:@"Black"];
    if (!v5)
    {
      v7 = 9;
      goto LABEL_24;
    }

    v6 = IFDefaultLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [IFGraphicSymbolOverridesParser _parseSymbolWeightFromRawItem:];
    }
  }

  v7 = 0;
LABEL_24:

  return v7;
}

- (unint64_t)_parseSymbolSizeFromRawItem:(id)item
{
  v3 = [item _IF_stringForKey:@"symbol_size"];
  v4 = v3;
  if (v3)
  {
    if (![v3 caseInsensitiveCompare:@"Small"])
    {
      v7 = 1;
      goto LABEL_12;
    }

    if (![v4 caseInsensitiveCompare:@"Medium"])
    {
      v7 = 2;
      goto LABEL_12;
    }

    v5 = [v4 caseInsensitiveCompare:@"Large"];
    if (!v5)
    {
      v7 = 3;
      goto LABEL_12;
    }

    v6 = IFDefaultLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [IFGraphicSymbolOverridesParser _parseSymbolSizeFromRawItem:];
    }
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (float)_parseSymbolSizeAdjusterFromRawItem:(id)item
{
  v3 = [item _IF_stringForKey:@"pointsize_to_shape_mul"];
  v4 = v3;
  if (v3)
  {
    [v3 floatValue];
    v6 = v5;
  }

  else
  {
    v6 = -1.0;
  }

  return v6;
}

- (CGSize)_parseSymbolOffsetFromRawItem:(id)item
{
  itemCopy = item;
  v4 = [itemCopy _IF_stringForKey:@"x_offset"];
  [v4 floatValue];
  v6 = v5;

  v7 = [itemCopy _IF_stringForKey:@"y_offset"];

  [v7 floatValue];
  v9 = v8;

  if (v6 == 0.0 && v9 == 0.0)
  {
    v11 = *MEMORY[0x1E695F060];
    v12 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v11 = v6;
    if (fabsf(v6) > 0.5)
    {
      v13 = IFDefaultLog(v10);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [(IFGraphicSymbolOverridesParser *)v13 _parseSymbolOffsetFromRawItem:v14, v15, v16, v17, v18, v19, v20, v6];
      }

      v11 = 0.0;
    }

    v12 = v9;
    if (fabsf(v9) > 0.5)
    {
      v21 = IFDefaultLog(v10);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [(IFGraphicSymbolOverridesParser *)v21 _parseSymbolOffsetFromRawItem:v22, v23, v24, v25, v26, v27, v28, v9];
      }

      v12 = 0.0;
    }
  }

  v29 = v11;
  v30 = v12;
  result.height = v30;
  result.width = v29;
  return result;
}

- (void)parse
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1B9DEC000, v0, OS_LOG_TYPE_ERROR, "Unknown override version: %@", v1, 0xCu);
}

- (void)_parseSymbolOffsetFromRawItem:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  LODWORD(v9) = 134217984;
  *(&v9 + 4) = a9;
  OUTLINED_FUNCTION_0_1(&dword_1B9DEC000, a1, a3, "Invalid offset %f", a5, a6, a7, a8, v9, DWORD2(v9));
}

@end