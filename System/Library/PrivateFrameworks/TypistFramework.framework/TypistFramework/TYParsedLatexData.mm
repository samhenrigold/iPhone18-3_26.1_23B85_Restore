@interface TYParsedLatexData
- (CGSize)boundingSize;
- (TYParsedLatexData)initWithString:(id)string isLatex:(BOOL)latex;
- (void)_convertFormula;
@end

@implementation TYParsedLatexData

- (void)_convertFormula
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  selfCopy = self;
  string = [(TYParsedLatexData *)self string];
  v48 = 0;
  v33 = v3;
  v5 = [v3 getBoundingBoxWithLatex:string error:&v48];
  v31 = v48;

  v36 = objc_opt_new();
  v6 = objc_opt_new();
  v39 = +[TypistLatexSymbolTranslation latexSymbolMap];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v5;
  v37 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v37)
  {
    v35 = *v45;
    v7 = 0.0;
    v8 = -3.40282347e38;
    v9 = 3.40282347e38;
    do
    {
      v10 = 0;
      do
      {
        if (*v45 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v38 = v10;
        v11 = *(*(&v44 + 1) + 8 * v10);
        v12 = objc_opt_new();
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        allKeys = [v11 allKeys];
        v14 = [allKeys countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v41;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v41 != v16)
              {
                objc_enumerationMutation(allKeys);
              }

              v18 = *(*(&v40 + 1) + 8 * i);
              v19 = [v11 objectForKey:v18];
              [v19 CGRectValue];
              v22 = v20 + v21;
              v25 = v23 + v24;
              if (v22 >= v20)
              {
                v26 = v20;
              }

              else
              {
                v26 = v22;
              }

              if (v22 >= v20)
              {
                v20 = v22;
              }

              if (v26 < v9)
              {
                v9 = v26;
              }

              if (v20 >= v8)
              {
                v8 = v20;
              }

              if (v25 >= v7)
              {
                v7 = v25;
              }

              v27 = [v39 objectForKey:v18];
              v28 = v27;
              if (v27)
              {
                v29 = v27;
              }

              else
              {
                v29 = v18;
              }

              v30 = v29;

              [v6 appendString:v30];
              [v12 setObject:v19 forKey:v30];
            }

            v15 = [allKeys countByEnumeratingWithState:&v40 objects:v49 count:16];
          }

          while (v15);
        }

        [v36 addObject:v12];
        v10 = v38 + 1;
      }

      while (v38 + 1 != v37);
      v37 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v37);
  }

  else
  {
    v7 = 0.0;
    v8 = -3.40282347e38;
    v9 = 3.40282347e38;
  }

  [(TYParsedLatexData *)selfCopy setLatexFormulaBoundingBoxes:v36];
  [(TYParsedLatexData *)selfCopy setConvertedString:v6];
  [(TYParsedLatexData *)selfCopy setBoundingSize:v7, v8 - v9];
  [(TYParsedLatexData *)selfCopy setOffsetY:v9];
}

- (TYParsedLatexData)initWithString:(id)string isLatex:(BOOL)latex
{
  latexCopy = latex;
  stringCopy = string;
  v11.receiver = self;
  v11.super_class = TYParsedLatexData;
  v7 = [(TYParsedLatexData *)&v11 init];
  v8 = v7;
  if (v7)
  {
    [(TYParsedLatexData *)v7 setString:stringCopy];
    [(TYParsedLatexData *)v8 setIsLatexString:latexCopy];
    if (latexCopy)
    {
      [(TYParsedLatexData *)v8 _convertFormula];
      [(TYParsedLatexData *)v8 setAnnotatedTextDirections:0];
    }

    else
    {
      textDirectionAnnotations = [stringCopy textDirectionAnnotations];
      [(TYParsedLatexData *)v8 setAnnotatedTextDirections:textDirectionAnnotations];

      [(TYParsedLatexData *)v8 setBoundingSize:0.0, 0.0];
      [(TYParsedLatexData *)v8 setConvertedString:0];
      [(TYParsedLatexData *)v8 setLatexFormulaBoundingBoxes:0];
    }
  }

  return v8;
}

- (CGSize)boundingSize
{
  width = self->_boundingSize.width;
  height = self->_boundingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end