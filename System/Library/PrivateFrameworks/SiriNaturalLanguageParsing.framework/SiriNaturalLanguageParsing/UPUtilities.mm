@interface UPUtilities
+ (BOOL)checkFileExistence:(id)existence error:(id *)error;
+ (_NSRange)rangeFromStart:(unint64_t)start end:(unint64_t)end;
+ (basic_string<char16_t,)nSStringToU16String:(std::allocator<char16_t>> *__return_ptr)retstr;
+ (id)higherLevelEntityLabelFromParentLabel:(id)label childLabel:(id)childLabel;
+ (id)intermediateNodeRepresentations:(id)representations;
+ (id)rootNodeRepresentationForIntent:(id)intent andEntities:(id)entities;
+ (id)stdU16ToNSString:(const void *)string;
@end

@implementation UPUtilities

+ (id)rootNodeRepresentationForIntent:(id)intent andEntities:(id)entities
{
  v28 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  entitiesCopy = entities;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = entitiesCopy;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        if ([v9 isHigherLevelEntity])
        {
          [array2 addObject:v9];
        }

        else
        {
          v10 = [UPResultLeafNode alloc];
          label = [v9 label];
          text = [v9 text];
          semanticValue = [v9 semanticValue];
          v14 = [(UPResultLeafNode *)v10 initWithLabel:label andText:text andSemanticValue:semanticValue];

          [array addObject:v14];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  v15 = [UPResultRootNode alloc];
  v16 = [UPUtilities intermediateNodeRepresentations:array2];
  v17 = [(UPResultRootNode *)v15 initWithLabel:intentCopy intermediateNodes:v16 directLeafNodes:array];

  return v17;
}

+ (id)intermediateNodeRepresentations:(id)representations
{
  v56 = *MEMORY[0x277D85DE8];
  representationsCopy = representations;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = representationsCopy;
  v4 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v4)
  {
    v5 = *v50;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v50 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v49 + 1) + 8 * i);
        higherLevelParentLabel = [v7 higherLevelParentLabel];
        higherLevelChildLabel = [v7 higherLevelChildLabel];
        v10 = [UPResultLeafNode alloc];
        text = [v7 text];
        semanticValue = [v7 semanticValue];
        v13 = [(UPResultLeafNode *)v10 initWithLabel:higherLevelChildLabel andText:text andSemanticValue:semanticValue];

        v14 = [dictionary objectForKey:higherLevelParentLabel];
        v15 = v14 == 0;

        if (v15)
        {
          dictionary2 = [MEMORY[0x277CBEB38] dictionary];
          [dictionary setObject:dictionary2 forKey:higherLevelParentLabel];
        }

        v17 = [dictionary objectForKey:higherLevelParentLabel];
        groupId = [v7 groupId];
        if (groupId)
        {
          [v7 groupId];
        }

        else
        {
          [MEMORY[0x277CCABB0] numberWithLong:0x7FFFFFFFFFFFFFFFLL];
        }
        v19 = ;

        v20 = [v17 objectForKey:v19];
        v21 = v20 == 0;

        if (v21)
        {
          array = [MEMORY[0x277CBEB18] array];
          [v17 setObject:array forKey:v19];
        }

        v23 = [v17 objectForKey:v19];
        [v23 addObject:v13];
      }

      v4 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v4);
  }

  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v38 = dictionary;
  v25 = [v38 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v25)
  {
    v36 = *v46;
    do
    {
      v37 = v25;
      for (j = 0; j != v37; ++j)
      {
        if (*v46 != v36)
        {
          objc_enumerationMutation(v38);
        }

        v27 = *(*(&v45 + 1) + 8 * j);
        v28 = [v38 objectForKey:v27];
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v29 = v28;
        v30 = [v29 countByEnumeratingWithState:&v41 objects:v53 count:16];
        if (v30)
        {
          v31 = *v42;
          do
          {
            for (k = 0; k != v30; ++k)
            {
              if (*v42 != v31)
              {
                objc_enumerationMutation(v29);
              }

              v33 = [v29 objectForKey:*(*(&v41 + 1) + 8 * k)];
              v34 = [[UPResultIntermediateNode alloc] initWithLabel:v27 andLeafNodes:v33];
              [v24 addObject:v34];
            }

            v30 = [v29 countByEnumeratingWithState:&v41 objects:v53 count:16];
          }

          while (v30);
        }
      }

      v25 = [v38 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v25);
  }

  return v24;
}

+ (id)higherLevelEntityLabelFromParentLabel:(id)label childLabel:(id)childLabel
{
  labelCopy = label;
  childLabelCopy = childLabel;
  v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v7 appendString:labelCopy];
  [v7 appendString:@"."];
  [v7 appendString:childLabelCopy];

  return v7;
}

+ (id)stdU16ToNSString:(const void *)string
{
  v3 = *(string + 1);
  if (*(string + 23) >= 0)
  {
    v4 = *(string + 23);
  }

  else
  {
    string = *string;
    v4 = v3;
  }

  return [MEMORY[0x277CCACA8] stringWithCharacters:string length:v4];
}

+ (basic_string<char16_t,)nSStringToU16String:(std::allocator<char16_t>> *__return_ptr)retstr
{
  v9 = v1;
  v3 = [v9 lengthOfBytesUsingEncoding:10];
  retstr->var0.var1.var0 = 0;
  retstr->var0.var1.var1 = 0;
  *(&retstr->var0.var1 + 2) = 0;
  std::basic_string<char16_t>::resize(retstr, v3, v4);
  if (*(&retstr->var0.var1 + 23) >= 0)
  {
    var0 = retstr;
  }

  else
  {
    var0 = retstr->var0.var1.var0;
  }

  [v9 getBytes:var0 maxLength:v3 usedLength:0 encoding:10 options:0 range:0 remainingRange:{v3, 0}];
  v6 = [v9 length];
  std::basic_string<char16_t>::resize(retstr, v6, v7);

  return result;
}

+ (_NSRange)rangeFromStart:(unint64_t)start end:(unint64_t)end
{
  v5 = end - start;
  result.length = v5;
  result.location = start;
  return result;
}

+ (BOOL)checkFileExistence:(id)existence error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  existenceCopy = existence;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = existenceCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v8)
  {
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if (([defaultManager fileExistsAtPath:{v11, v17}] & 1) == 0)
        {
          if (error)
          {
            v21[0] = *MEMORY[0x277CCA450];
            mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
            v14 = [mainBundle localizedStringForKey:@"Could not open file path" value:&stru_2835E9330 table:0];
            v21[1] = @"FilePath";
            v22[0] = v14;
            v22[1] = v11;
            v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

            *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-3001 userInfo:v15];
          }

          v12 = 0;
          goto LABEL_13;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_13:

  return v12;
}

@end