@interface RAWTIFFIFD
- (RAWTIFFIFD)initWithNamespace:(id)namespace reverseNamespace:(id)reverseNamespace;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
- (id)objectForKeyedSubscript:(id)subscript;
- (void)dumpMemoryInfoKey:(id)key indent:(unint64_t)indent;
- (void)dumpObjCInfoKey:(id)key value:(id)value indent:(unint64_t)indent;
- (void)setObject:(id)object atIndexedSubscript:(unint64_t)subscript;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
@end

@implementation RAWTIFFIFD

- (RAWTIFFIFD)initWithNamespace:(id)namespace reverseNamespace:(id)reverseNamespace
{
  namespaceCopy = namespace;
  reverseNamespaceCopy = reverseNamespace;
  v12.receiver = self;
  v12.super_class = RAWTIFFIFD;
  v8 = [(RAWTIFFIFD *)&v12 init];
  if (v8)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(RAWTIFFIFD *)v8 setMTagsByID:dictionary];

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    [(RAWTIFFIFD *)v8 setMTagsByName:dictionary2];

    [(RAWTIFFIFD *)v8 setMNamespace:namespaceCopy];
    [(RAWTIFFIFD *)v8 setMNamespaceReverse:reverseNamespaceCopy];
  }

  return v8;
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  mTagsByID = self->mTagsByID;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:subscript];
  v5 = [(NSMutableDictionary *)mTagsByID objectForKeyedSubscript:v4];

  return v5;
}

- (void)setObject:(id)object atIndexedSubscript:(unint64_t)subscript
{
  objectCopy = object;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:subscript];
  mTagsByID = [(RAWTIFFIFD *)self mTagsByID];
  [mTagsByID setObject:objectCopy forKeyedSubscript:v6];

  mNamespace = [(RAWTIFFIFD *)self mNamespace];
  v9 = [mNamespace objectForKeyedSubscript:v6];
  v10 = [v9 objectForKeyedSubscript:@"Name"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mTagsByName = [(RAWTIFFIFD *)self mTagsByName];
    lowercaseString = [v10 lowercaseString];
    [mTagsByName setObject:objectCopy forKeyedSubscript:lowercaseString];
  }
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  if ((atomic_load_explicit(&qword_27DE37DA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DE37DA0))
  {
    qword_27DE37D98 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"([[:digit:]]+(?:%[[:digit:]]+)?\\[[[:digit:]]+\\])|([[:digit:]]+(?:%[[:digit:]]+)?)|([[:alpha:]][[:alnum:]]*(?:%[[:digit:]]+)?\\[[[:digit:]]\\])|([[:alpha:]][[:alnum:]]*(?:%[[:digit:]]+)?)" options:1 error:0];
    __cxa_guard_release(&qword_27DE37DA0);
  }

  if ((atomic_load_explicit(&qword_27DE37DB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DE37DB0))
  {
    qword_27DE37DA8 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"([[:alnum:]]+)\\[([[:digit:]]+)\\]" options:1 error:0];
    __cxa_guard_release(&qword_27DE37DB0);
  }

  if ((atomic_load_explicit(&qword_27DE37DC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DE37DC0))
  {
    qword_27DE37DB8 = NSClassFromString(&cfstr_Nsblock.isa);
    __cxa_guard_release(&qword_27DE37DC0);
  }

  v5 = [subscriptCopy componentsSeparatedByString:@"."];
  firstObject = [v5 firstObject];
  v7 = [qword_27DE37D98 firstMatchInString:firstObject options:0 range:{0, objc_msgSend(firstObject, "length")}];
  if ([v7 numberOfRanges] != 5)
  {
    goto LABEL_9;
  }

  if (![v7 rangeAtIndex:1])
  {
    v9 = [v7 rangeAtIndex:1];
    v11 = [firstObject substringWithRange:{v9, v10}];
    mTagsByName2 = [qword_27DE37DA8 firstMatchInString:v11 options:0 range:{0, objc_msgSend(v11, "length")}];
    if ([mTagsByName2 numberOfRanges] == 3)
    {
      v13 = [mTagsByName2 rangeAtIndex:1];
      v48 = [v11 substringWithRange:{v13, v14}];
      v15 = [mTagsByName2 rangeAtIndex:2];
      v49 = [v11 substringWithRange:{v15, v16}];
      mTagsByID = [(RAWTIFFIFD *)self mTagsByID];
      v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v48, "integerValue")}];
      v19 = [mTagsByID objectForKeyedSubscript:v18];

      v20 = [v19 objectAtIndexedSubscript:{objc_msgSend(v49, "integerValue")}];
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_28:

        lowercaseString2 = v48;
        goto LABEL_29;
      }

LABEL_27:
      v42 = v20[2](v20);

      [v19 setObject:v42 atIndexedSubscript:{objc_msgSend(v49, "integerValue")}];
      v20 = v42;
      goto LABEL_28;
    }

LABEL_18:
    firstObject2 = 0;
    goto LABEL_30;
  }

  if ([v7 rangeAtIndex:2])
  {
    if ([v7 rangeAtIndex:3])
    {
      if ([v7 rangeAtIndex:4])
      {
LABEL_9:
        firstObject2 = 0;
        goto LABEL_32;
      }

      v37 = [v7 rangeAtIndex:4];
      v11 = [firstObject substringWithRange:{v37, v38}];
      mTagsByName = [(RAWTIFFIFD *)self mTagsByName];
      lowercaseString = [v11 lowercaseString];
      v41 = [mTagsByName objectForKeyedSubscript:lowercaseString];

      if (objc_opt_isKindOfClass())
      {
        v20 = v41[2](v41);

        mTagsByName2 = [(RAWTIFFIFD *)self mTagsByName];
        lowercaseString2 = [v11 lowercaseString];
        [mTagsByName2 setObject:v20 forKeyedSubscript:lowercaseString2];
        goto LABEL_29;
      }

      mTagsByName2 = v41;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [mTagsByName2 count] != 1)
      {
        firstObject2 = mTagsByName2;
        goto LABEL_30;
      }

      firstObject2 = [mTagsByName2 firstObject];

      if (objc_opt_isKindOfClass())
      {
        lowercaseString2 = [MEMORY[0x277CBEB18] arrayWithArray:mTagsByName2];
        v20 = firstObject2[2](firstObject2);

        [lowercaseString2 setObject:v20 atIndexedSubscript:0];
        goto LABEL_29;
      }

LABEL_30:

      goto LABEL_31;
    }

    v26 = [v7 rangeAtIndex:3];
    v11 = [firstObject substringWithRange:{v26, v27}];
    mTagsByName2 = [qword_27DE37DA8 firstMatchInString:v11 options:0 range:{0, objc_msgSend(v11, "length")}];
    if ([mTagsByName2 numberOfRanges] == 3)
    {
      v28 = [mTagsByName2 rangeAtIndex:1];
      v48 = [v11 substringWithRange:{v28, v29}];
      v30 = [mTagsByName2 rangeAtIndex:2];
      v49 = [v11 substringWithRange:{v30, v31}];
      mTagsByName3 = [(RAWTIFFIFD *)self mTagsByName];
      lowercaseString3 = [v48 lowercaseString];
      v34 = [mTagsByName3 objectForKeyedSubscript:lowercaseString3];

      if (objc_opt_isKindOfClass())
      {
        v19 = v34[2](v34);

        mTagsByName4 = [(RAWTIFFIFD *)self mTagsByName];
        lowercaseString4 = [v11 lowercaseString];
        [mTagsByName4 setObject:v19 forKeyedSubscript:lowercaseString4];
      }

      else
      {
        v19 = v34;
      }

      v20 = [v19 objectAtIndexedSubscript:{objc_msgSend(v49, "integerValue")}];
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    goto LABEL_18;
  }

  v21 = [v7 rangeAtIndex:2];
  v11 = [firstObject substringWithRange:{v21, v22}];
  mTagsByID2 = [(RAWTIFFIFD *)self mTagsByID];
  v24 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "integerValue")}];
  firstObject2 = [mTagsByID2 objectForKeyedSubscript:v24];

  if (objc_opt_isKindOfClass())
  {
    v20 = firstObject2[2](firstObject2);

    mTagsByName2 = [(RAWTIFFIFD *)self mTagsByID];
    lowercaseString2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "integerValue")}];
    [mTagsByName2 setObject:v20 forKeyedSubscript:lowercaseString2];
LABEL_29:

    firstObject2 = v20;
    goto LABEL_30;
  }

LABEL_31:

LABEL_32:
  if ([v5 count] >= 2)
  {
    v43 = [v5 subarrayWithRange:{1, objc_msgSend(v5, "count") - 1}];
    v44 = [v43 componentsJoinedByString:@"."];

    v45 = [firstObject2 objectForKeyedSubscript:v44];

    if (objc_opt_isKindOfClass())
    {
      v46 = v45[2](v45);

      v45 = v46;
    }

    firstObject2 = v45;
  }

  return firstObject2;
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  objectCopy = object;
  subscriptCopy = subscript;
  mTagsByName = [(RAWTIFFIFD *)self mTagsByName];
  lowercaseString = [subscriptCopy lowercaseString];
  [mTagsByName setObject:objectCopy forKeyedSubscript:lowercaseString];
}

- (void)dumpObjCInfoKey:(id)key value:(id)value indent:(unint64_t)indent
{
  keyCopy = key;
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = MEMORY[0x277D85DF8];
    v11 = *MEMORY[0x277D85DF8];
    sub_2337477D0(__b, indent, 9);
    v12 = v41;
    v13 = __b[0];
    uTF8String = [keyCopy UTF8String];
    v15 = __b;
    if (v12 < 0)
    {
      v15 = v13;
    }

    fprintf(v11, "%s%s : (\n", v15, uTF8String);
    if (v41 < 0)
    {
      operator delete(__b[0]);
    }

    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = sub_233747880;
    v39[3] = &unk_2789EE9E0;
    v39[4] = self;
    v39[5] = indent;
    [valueCopy enumerateObjectsUsingBlock:v39];
    v16 = *v10;
    sub_2337477D0(__b, indent, 9);
    if (v41 >= 0)
    {
      v17 = __b;
    }

    else
    {
      v17 = __b[0];
    }

    fprintf(v16, "%s)\n", v17);
    if (v41 < 0)
    {
      operator delete(__b[0]);
    }
  }

  else
  {
    v18 = valueCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = MEMORY[0x277D85DF8];
      v20 = *MEMORY[0x277D85DF8];
      sub_2337477D0(__b, indent, 9);
      v21 = v41;
      v22 = __b[0];
      uTF8String2 = [keyCopy UTF8String];
      v24 = __b;
      if (v21 < 0)
      {
        v24 = v22;
      }

      fprintf(v20, "%s%s : {\n", v24, uTF8String2);
      if (v41 < 0)
      {
        operator delete(__b[0]);
      }

      NSLog(&cfstr_NsdictionaryLu.isa, [v18 count]);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = sub_233747A2C;
      v38[3] = &unk_2789EEA08;
      v38[4] = self;
      v38[5] = indent;
      [v18 enumerateKeysAndObjectsUsingBlock:v38];
      v25 = *v19;
      sub_2337477D0(__b, indent, 9);
      if (v41 >= 0)
      {
        v26 = __b;
      }

      else
      {
        v26 = __b[0];
      }

      fprintf(v25, "%s}\n", v26);
      if (v41 < 0)
      {
        operator delete(__b[0]);
      }
    }

    else
    {
      v27 = v18;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = *MEMORY[0x277D85DF8];
        sub_2337477D0(__b, indent, 9);
        if (v41 >= 0)
        {
          v29 = __b;
        }

        else
        {
          v29 = __b[0];
        }

        uTF8String3 = [keyCopy UTF8String];
        stringValue = [v27 stringValue];
        fprintf(v28, "%s%s : @%s\n", v29, uTF8String3, [stringValue UTF8String]);

        if (v41 < 0)
        {
          operator delete(__b[0]);
        }
      }

      else
      {
        v32 = v27;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = *MEMORY[0x277D85DF8];
          v34 = __b;
          sub_2337477D0(__b, indent, 9);
          if (v41 < 0)
          {
            v34 = __b[0];
          }

          fprintf(v33, "%s%s : @%s\n", v34, [keyCopy UTF8String], objc_msgSend(v32, "UTF8String"));
          if (v41 < 0)
          {
            operator delete(__b[0]);
          }
        }

        else
        {
          v35 = v32;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v36 = *MEMORY[0x277D85DF8];
            v37 = __b;
            sub_2337477D0(__b, indent, 9);
            if (v41 < 0)
            {
              v37 = __b[0];
            }

            fprintf(v36, "%s%s : %lu bytes\n", v37, [keyCopy UTF8String], objc_msgSend(v35, "length"));
            if (v41 < 0)
            {
              operator delete(__b[0]);
            }
          }
        }
      }
    }
  }
}

- (void)dumpMemoryInfoKey:(id)key indent:(unint64_t)indent
{
  v63 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  mTagsByID = [(RAWTIFFIFD *)self mTagsByID];
  v7 = [mTagsByID count];

  if (v7)
  {
    v8 = *MEMORY[0x277D85DF8];
    v9 = __p;
    sub_2337477D0(__p, indent, 9);
    if (v60 < 0)
    {
      v9 = __p[0];
    }

    v10 = keyCopy;
    uTF8String = [keyCopy UTF8String];
    mTagsByID2 = [(RAWTIFFIFD *)self mTagsByID];
    fprintf(v8, "%s%s : TagsByID( %lu items\n", v9, uTF8String, [mTagsByID2 count]);

    if (v60 < 0)
    {
      operator delete(__p[0]);
    }

    mTagsByID3 = [(RAWTIFFIFD *)self mTagsByID];
    allKeys = [mTagsByID3 allKeys];
    v15 = [allKeys sortedArrayUsingComparator:&unk_284904C10];

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v55 objects:v62 count:16];
    if (v17)
    {
      v18 = *v56;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v56 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v55 + 1) + 8 * i);
          mTagsByID4 = [(RAWTIFFIFD *)self mTagsByID];
          v22 = [mTagsByID4 objectForKeyedSubscript:v20];

          v23 = v22;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            stringValue = [v20 stringValue];
            [v23 dumpMemoryInfoKey:stringValue indent:indent + 1];
          }

          else
          {
            NSClassFromString(&cfstr_Nsblock.isa);
            if (objc_opt_isKindOfClass())
            {
              stringValue = [v20 stringValue];
              v25 = v23[2](v23);
              [(RAWTIFFIFD *)self dumpObjCInfoKey:stringValue value:v25 indent:indent + 1];
            }

            else
            {
              stringValue = [v20 stringValue];
              [(RAWTIFFIFD *)self dumpObjCInfoKey:stringValue value:v23 indent:indent + 1];
            }
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v55 objects:v62 count:16];
      }

      while (v17);
    }

    v26 = *MEMORY[0x277D85DF8];
    sub_2337477D0(__p, indent, 9);
    if (v60 >= 0)
    {
      v27 = __p;
    }

    else
    {
      v27 = __p[0];
    }

    fprintf(v26, "%s)\n", v27);
    if (v60 < 0)
    {
      operator delete(__p[0]);
    }
  }

  mTagsByName = [(RAWTIFFIFD *)self mTagsByName];
  v29 = [mTagsByName count] == 0;

  if (!v29)
  {
    v30 = *MEMORY[0x277D85DF8];
    v31 = __p;
    sub_2337477D0(__p, indent, 9);
    if (v60 < 0)
    {
      v31 = __p[0];
    }

    v32 = keyCopy;
    uTF8String2 = [keyCopy UTF8String];
    mTagsByName2 = [(RAWTIFFIFD *)self mTagsByName];
    fprintf(v30, "%s%s : TagsByName( %lu items\n", v31, uTF8String2, [mTagsByName2 count]);

    if (v60 < 0)
    {
      operator delete(__p[0]);
    }

    mTagsByName3 = [(RAWTIFFIFD *)self mTagsByName];
    allKeys2 = [mTagsByName3 allKeys];
    v37 = [allKeys2 sortedArrayUsingComparator:&unk_284904C30];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v37;
    v38 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
    if (v38)
    {
      v39 = *v52;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v52 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v41 = *(*(&v51 + 1) + 8 * j);
          v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"@%@", v41];
          mTagsByName4 = [(RAWTIFFIFD *)self mTagsByName];
          v44 = [mTagsByName4 objectForKeyedSubscript:v41];

          v45 = v44;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v45 dumpMemoryInfoKey:v42 indent:indent + 1];
          }

          else
          {
            NSClassFromString(&cfstr_Nsblock.isa);
            if (objc_opt_isKindOfClass())
            {
              v46 = v45[2](v45);
              [(RAWTIFFIFD *)self dumpObjCInfoKey:v42 value:v46 indent:indent + 1];
            }

            else
            {
              [(RAWTIFFIFD *)self dumpObjCInfoKey:v42 value:v45 indent:indent + 1];
            }
          }
        }

        v38 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
      }

      while (v38);
    }

    v47 = *MEMORY[0x277D85DF8];
    sub_2337477D0(__p, indent, 9);
    if (v60 >= 0)
    {
      v48 = __p;
    }

    else
    {
      v48 = __p[0];
    }

    fprintf(v47, "%s)\n", v48);
    if (v60 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

@end