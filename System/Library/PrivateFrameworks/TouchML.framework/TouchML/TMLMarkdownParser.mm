@interface TMLMarkdownParser
+ (id)parse:(id)parse tags:(id *)tags withRules:(id)rules;
+ (id)postProcessString:(id)string;
+ (id)preProcessString:(id)string;
+ (id)regexFromRules:(id)rules;
+ (id)stringOfTagType:(id)type andCount:(unint64_t)count;
+ (id)unescapeString:(id)string;
- (BOOL)isListTagOpen:(id)open;
- (TMLMarkdownParser)init;
- (id)parse:(id)parse tags:(id *)tags;
- (id)replacestring:(id)replacestring usingRule:(id)rule atIndex:(unint64_t)index additonalRules:(BOOL)rules;
- (id)tagFromType:(int)type;
@end

@implementation TMLMarkdownParser

- (TMLMarkdownParser)init
{
  v12.receiver = self;
  v12.super_class = TMLMarkdownParser;
  v2 = [(TMLMarkdownParser *)&v12 init];
  v3 = v2;
  if (v2)
  {
    rules = v2->_rules;
    v2->_rules = &unk_287F57660;

    v5 = [objc_opt_class() regexFromRules:v3->_rules];
    regex = v3->_regex;
    v3->_regex = v5;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    attributes = v3->_attributes;
    v3->_attributes = dictionary;

    v9 = [&unk_287F57450 mutableCopy];
    tag = v3->_tag;
    v3->_tag = v9;
  }

  return v3;
}

+ (id)regexFromRules:(id)rules
{
  v3 = MEMORY[0x277CBEB18];
  rulesCopy = rules;
  v5 = [v3 arrayWithCapacity:{objc_msgSend(rulesCopy, "count")}];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_26F1BBA6C;
  v8[3] = &unk_279DC7BA0;
  v6 = v5;
  v9 = v6;
  [rulesCopy enumerateObjectsUsingBlock:v8];

  return v6;
}

+ (id)unescapeString:(id)string
{
  v3 = [string stringByReplacingOccurrencesOfString:@"\\n" withString:@"\n"];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"\\t" withString:@"\t"];

  v5 = [v4 stringByReplacingOccurrencesOfString:@"\\\ withString:@"\];

  v6 = [v5 stringByReplacingOccurrencesOfString:@"\ withString:@"];

  v7 = [v6 stringByReplacingOccurrencesOfString:@"\n\n" withString:@"\n[emptyTag][/emptyTag]\n"];

  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n\n" withString:@"\n[emptyTag][/emptyTag]\n"];

  v9 = [v8 mutableCopy];
  if (CFStringTransform(v9, 0, @"Any-Hex/Java", 1u))
  {
    v10 = [(__CFString *)v9 copy];

    v8 = v10;
  }

  return v8;
}

+ (id)preProcessString:(id)string
{
  v3 = [string stringByReplacingOccurrencesOfString:@"\\_" withString:@"kTMLMarkdownParserEscapedUnderscore"];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"\\*" withString:@"kTMLMarkdownParserEscapedStar"];

  v5 = [v4 stringByReplacingOccurrencesOfString:@"\\^" withString:@"kTMLMarkdownParserEscapedCarrot"];

  v6 = [v5 stringByReplacingOccurrencesOfString:@"\\." withString:@"kTMLMarkdownParserEscapedPeriod"];

  v7 = [v6 stringByReplacingOccurrencesOfString:@"\\+" withString:@"kTMLMarkdownParserEscapedPlus"];

  v8 = [v7 mutableCopy];
  if (CFStringTransform(v8, 0, @"Any-Hex/Java", 1u))
  {
    v9 = [(__CFString *)v8 copy];

    v7 = v9;
  }

  return v7;
}

+ (id)postProcessString:(id)string
{
  v3 = [string stringByReplacingOccurrencesOfString:@"kTMLMarkdownParserEscapedUnderscore" withString:@"_"];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"kTMLMarkdownParserEscapedStar" withString:@"*"];

  v5 = [v4 stringByReplacingOccurrencesOfString:@"kTMLMarkdownParserEscapedCarrot" withString:@"^"];

  v6 = [v5 stringByReplacingOccurrencesOfString:@"kTMLMarkdownParserEscapedPeriod" withString:@"."];

  v7 = [v6 stringByReplacingOccurrencesOfString:@"kTMLMarkdownParserEscapedPlus" withString:@"+"];

  v8 = [v7 mutableCopy];
  if (CFStringTransform(v8, 0, @"Any-Hex/Java", 1u))
  {
    v9 = [(__CFString *)v8 copy];

    v7 = v9;
  }

  return v7;
}

- (id)parse:(id)parse tags:(id *)tags
{
  parseCopy = parse;
  v6 = [MEMORY[0x277CCAC80] scannerWithString:parseCopy];
  scanner = self->_scanner;
  self->_scanner = v6;

  newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
  [(NSScanner *)self->_scanner setCharactersToBeSkipped:?];
  v8 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:{(objc_msgSend(parseCopy, "length") * 1.25)}];
  v9 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  while (1)
  {
    v10 = self->_scanner;
    v26 = v9;
    v11 = [(NSScanner *)v10 scanUpToCharactersFromSet:newlineCharacterSet intoString:&v26];
    v12 = v26;

    if (!v11)
    {
      break;
    }

    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_26F1BC204;
    v24 = sub_26F1BC214;
    v25 = [v12 mutableCopy];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_26F1BC21C;
    v19[3] = &unk_279DC7BF0;
    v19[4] = self;
    v19[5] = &v20;
    v19[6] = v27;
    v19[7] = v29;
    v19[8] = tags;
    v13 = MEMORY[0x27438BB60](v19);
    (v13)[2](v13, self->_rules, 0);
    (v13)[2](v13, self->_extraRules, 1);
    if ([(TMLMarkdownParser *)self isListTagOpen:v21[5]])
    {
      [v8 appendString:@"[/li]"];
      [(NSMutableDictionary *)self->_tag setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"open"];
      [(NSMutableDictionary *)self->_tag setObject:&unk_287F55B98 forKeyedSubscript:@"count"];
    }

    [v8 appendString:v21[5]];
    if ([(NSScanner *)self->_scanner isAtEnd])
    {
      v14 = [(NSMutableDictionary *)self->_tag objectForKeyedSubscript:@"open"];
      bOOLValue = [v14 BOOLValue];

      if (bOOLValue)
      {
        [v8 appendString:@"[/li]"];
      }
    }

    if (![(NSScanner *)self->_scanner isAtEnd])
    {
      [v8 appendString:@"\n"];
    }

    _Block_object_dispose(&v20, 8);
    v9 = v12;
  }

  [*tags addEntriesFromDictionary:self->_attributes];
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v29, 8);

  return v8;
}

- (id)replacestring:(id)replacestring usingRule:(id)rule atIndex:(unint64_t)index additonalRules:(BOOL)rules
{
  rulesCopy = rules;
  v101 = *MEMORY[0x277D85DE8];
  replacestringCopy = replacestring;
  ruleCopy = rule;
  v12 = 40;
  if (rulesCopy)
  {
    v12 = 56;
  }

  selfCopy = self;
  v69 = [*(&self->super.isa + v12) objectAtIndexedSubscript:index];
  v13 = [replacestringCopy mutableCopy];
  array = [MEMORY[0x277CBEB18] array];
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = [v69 matchesInString:v13 options:0 range:{0, objc_msgSend(v13, "length")}];
  v73 = [obj countByEnumeratingWithState:&v89 objects:v100 count:16];
  if (v73)
  {
    v71 = *v90;
    do
    {
      v14 = 0;
      do
      {
        if (*v90 != v71)
        {
          v15 = v14;
          objc_enumerationMutation(obj);
          v14 = v15;
        }

        v74 = v14;
        v16 = *(*(&v89 + 1) + 8 * v14);
        array2 = [MEMORY[0x277CBEB18] array];
        array3 = [MEMORY[0x277CBEB18] array];
        v83 = 0;
        v84 = &v83;
        v85 = 0x3032000000;
        v86 = sub_26F1BC204;
        v87 = sub_26F1BC214;
        v88 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:{(objc_msgSend(v13, "length") * 1.25)}];
        for (i = 1; i < [v16 numberOfRanges]; i = v23 + 2)
        {
          v20 = [v16 rangeAtIndex:i];
          v22 = [v13 substringWithRange:{v20, v21}];
          v23 = i - 1;
          [array2 setObject:v22 atIndexedSubscript:v23];
        }

        v24 = [ruleCopy objectForKeyedSubscript:@"replace"];
        v25 = [v24 count];

        if (v25)
        {
          for (j = 0; j != v25; ++j)
          {
            v27 = [ruleCopy objectForKeyedSubscript:@"replace"];
            v28 = [v27 objectAtIndexedSubscript:j];

            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            v30 = v28;
            if (isKindOfClass)
            {
              v6 = [array2 objectAtIndexedSubscript:{objc_msgSend(v28, "intValue", v28)}];
              v30 = v6;
            }

            [array3 setObject:v30 atIndexedSubscript:j];
            if (isKindOfClass)
            {
            }
          }
        }

        v31 = v84[5];
        v32 = [array3 componentsJoinedByString:&stru_287F301C0];
        [v31 appendString:v32];

        v82[0] = MEMORY[0x277D85DD0];
        v82[1] = 3221225472;
        v82[2] = sub_26F1BCDD8;
        v82[3] = &unk_279DC7C18;
        v82[4] = selfCopy;
        v82[5] = &v83;
        v75 = MEMORY[0x27438BB60](v82);
        v33 = [ruleCopy objectForKeyedSubscript:@"tag"];
        intValue = [v33 intValue];

        if ((intValue - 3) >= 2)
        {
          if (intValue == 1)
          {
            v50 = MEMORY[0x277CCACA8];
            v38 = [array2 objectAtIndexedSubscript:0];
            stringValue2 = [v50 stringWithFormat:@"%lu", objc_msgSend(v38, "length")];
          }

          else
          {
            stringValue = &stru_287F301C0;
            if (intValue != 2)
            {
              goto LABEL_34;
            }

            stringValue2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", -[NSMutableDictionary count](selfCopy->_attributes, "count")];
            attributes = selfCopy->_attributes;
            v98 = stringValue2;
            v96 = @"link";
            v38 = [array2 objectAtIndexedSubscript:4];
            v97 = v38;
            stringValue = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
            v99 = stringValue;
            v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
            [(NSMutableDictionary *)attributes addEntriesFromDictionary:v39];

LABEL_25:
          }

          stringValue = stringValue2;
          goto LABEL_29;
        }

        v40 = [(NSMutableDictionary *)selfCopy->_tag objectForKeyedSubscript:@"count"];
        stringValue = [v40 stringValue];

        v41 = [(NSMutableDictionary *)selfCopy->_tag objectForKeyedSubscript:@"open"];
        bOOLValue = [v41 BOOLValue];

        v43 = @"[li]";
        if (bOOLValue)
        {
          v44 = [(NSMutableDictionary *)selfCopy->_tag objectForKeyedSubscript:@"type"];
          v45 = [ruleCopy objectForKeyedSubscript:@"tag"];
          v46 = [v44 isEqual:v45];

          v43 = @"[/li][li]";
          if (v46)
          {
            v47 = MEMORY[0x277CCABB0];
            v48 = [(NSMutableDictionary *)selfCopy->_tag objectForKeyedSubscript:@"count"];
            v49 = [v47 numberWithInteger:{objc_msgSend(v48, "integerValue") + 1}];
            [(NSMutableDictionary *)selfCopy->_tag setObject:v49 forKeyedSubscript:@"count"];

            v38 = [(NSMutableDictionary *)selfCopy->_tag objectForKeyedSubscript:@"count"];
            stringValue2 = [v38 stringValue];
            goto LABEL_25;
          }
        }

        (v75)[2](v75, ruleCopy, v43);
LABEL_29:
        v51 = [ruleCopy objectForKeyedSubscript:@"tag"];
        v52 = [v51 intValue] == 1;

        if (v52)
        {
          v53 = [array2 objectAtIndexedSubscript:0];
          v54 = +[TMLMarkdownParser stringOfTagType:andCount:](TMLMarkdownParser, "stringOfTagType:andCount:", @"#", [v53 length]);

          [v54 appendString:@"[/h<TagCount>]"];
          if ([v84[5] hasSuffix:v54])
          {
            [v84[5] replaceCharactersInRange:objc_msgSend(v84[5] withString:{"length") - objc_msgSend(v54, "length"), objc_msgSend(v54, "length"), @"[/h<TagCount>]"}];
          }
        }

        [v84[5] replaceOccurrencesOfString:@"<TagCount>" withString:stringValue options:1 range:{0, objc_msgSend(v84[5], "length")}];
LABEL_34:
        v55 = v84[5];
        v94[0] = @"rs";
        v94[1] = @"ms";
        v95[0] = v55;
        v56 = [array2 componentsJoinedByString:&stru_287F301C0];
        v95[1] = v56;
        v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:2];
        [array addObject:v57];

        _Block_object_dispose(&v83, 8);
        v14 = v74 + 1;
      }

      while (v74 + 1 != v73);
      v73 = [obj countByEnumeratingWithState:&v89 objects:v100 count:16];
    }

    while (v73);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v77 = array;
  v58 = [v77 countByEnumeratingWithState:&v78 objects:v93 count:16];
  if (v58)
  {
    v59 = *v79;
    do
    {
      for (k = 0; k != v58; ++k)
      {
        if (*v79 != v59)
        {
          objc_enumerationMutation(v77);
        }

        v61 = *(*(&v78 + 1) + 8 * k);
        v62 = [v61 objectForKeyedSubscript:@"ms"];
        v63 = [v13 rangeOfString:v62];
        v65 = v64;

        if (v63 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v66 = [v61 objectForKeyedSubscript:@"rs"];
          [v13 replaceCharactersInRange:v63 withString:{v65, v66}];
        }
      }

      v58 = [v77 countByEnumeratingWithState:&v78 objects:v93 count:16];
    }

    while (v58);
  }

  return v13;
}

- (id)tagFromType:(int)type
{
  v3 = @"[/unknown]";
  if (type == 4)
  {
    v3 = @"[/ul]";
  }

  if (type == 3)
  {
    return @"[/ol]";
  }

  else
  {
    return v3;
  }
}

- (BOOL)isListTagOpen:(id)open
{
  openCopy = open;
  v5 = [(NSMutableDictionary *)self->_tag objectForKeyedSubscript:@"open"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    if ([openCopy length] < 6 || (v7 = objc_msgSend(openCopy, "length"), v7 < 6))
    {
      v8 = &stru_287F301C0;
    }

    else
    {
      v8 = [openCopy substringWithRange:{(v7 - 5), 5}];
    }

    v9 = [(NSMutableDictionary *)self->_tag objectForKeyedSubscript:@"type"];
    v10 = -[TMLMarkdownParser tagFromType:](self, "tagFromType:", [v9 intValue]);

    if ([v10 length])
    {
      bOOLValue = [v10 isEqualToString:v8] ^ 1;
    }

    else
    {
      LOBYTE(bOOLValue) = 0;
    }
  }

  return bOOLValue;
}

+ (id)parse:(id)parse tags:(id *)tags withRules:(id)rules
{
  rulesCopy = rules;
  parseCopy = parse;
  v10 = objc_alloc_init(TMLMarkdownParser);
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(rulesCopy, "count")}];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_26F1BD1A4;
  v23[3] = &unk_279DC7BA0;
  v12 = v11;
  v24 = v12;
  [rulesCopy enumerateObjectsUsingBlock:v23];

  extraRules = v10->_extraRules;
  v10->_extraRules = v12;
  v14 = v12;

  v15 = [self regexFromRules:v14];
  extraRegex = v10->_extraRegex;
  v10->_extraRegex = v15;

  v17 = [objc_opt_class() unescapeString:parseCopy];

  v18 = [objc_opt_class() preProcessString:v17];
  v19 = objc_opt_class();
  v20 = [(TMLMarkdownParser *)v10 parse:v18 tags:tags];
  v21 = [v19 postProcessString:v20];

  return v21;
}

+ (id)stringOfTagType:(id)type andCount:(unint64_t)count
{
  typeCopy = type;
  for (i = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:(count * 1.25)]; count; --count)
  {
    [i appendString:typeCopy];
  }

  return i;
}

@end