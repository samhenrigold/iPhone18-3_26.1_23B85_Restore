@interface NSString(TYTextDirectionAnnotations)
- (id)textDirectionAnnotations;
@end

@implementation NSString(TYTextDirectionAnnotations)

- (id)textDirectionAnnotations
{
  v3 = objc_opt_new();
  numberCombiningCharacterSet = [MEMORY[0x277CCA900] numberCombiningCharacterSet];
  v5 = [objc_alloc(MEMORY[0x277CD89E0]) initWithUnit:0];
  v6 = objc_alloc_init(MEMORY[0x277CD89C0]);
  [v5 setString:self];
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v7 = [self length];
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __64__NSString_TYTextDirectionAnnotations__textDirectionAnnotations__block_invoke;
  v31 = &unk_279DF4868;
  selfCopy = self;
  v36 = &v43;
  v8 = v6;
  v33 = v8;
  v37 = &v47;
  v38 = &v39;
  v9 = numberCombiningCharacterSet;
  v34 = v9;
  v10 = v3;
  v35 = v10;
  [v5 enumerateTokensInRange:0 usingBlock:{v7, &v28}];
  v11 = v44[3];
  if (v11 < [self length])
  {
    v12 = v44[3];
    v13 = [self length];
    v14 = v13 - v44[3];
    v15 = [self substringWithRange:{v12, v14}];
    [v8 processString:v15];
    v16 = MEMORY[0x277CBEAF8];
    dominantLanguage = [v8 dominantLanguage];
    v18 = [v16 characterDirectionForLanguage:dominantLanguage];

    if (*(v40 + 24) == 1 && (v18 != 2 || ([MEMORY[0x277CCA900] punctuationCharacterSet], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCA900], "characterSetWithCharactersInString:", v15), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "isSupersetOfSet:", v20), v20, v19, v21)))
    {
      lastObject = [v10 lastObject];
      range = [lastObject range];
      [lastObject range];
      [lastObject setRange:{range, v24 + v14}];
    }

    else
    {
      lastObject = [TYTextDirectionAnnotation initWithRange:v12 textDirection:v14, v48[3]];
      [v10 addObject:lastObject];
    }
  }

  v25 = v35;
  v26 = v10;

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);

  return v26;
}

@end