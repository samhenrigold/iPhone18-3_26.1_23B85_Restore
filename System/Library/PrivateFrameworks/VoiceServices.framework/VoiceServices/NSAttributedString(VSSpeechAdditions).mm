@interface NSAttributedString(VSSpeechAdditions)
+ (id)attributedStringWithFormatAndAttributes:()VSSpeechAdditions;
@end

@implementation NSAttributedString(VSSpeechAdditions)

+ (id)attributedStringWithFormatAndAttributes:()VSSpeechAdditions
{
  v9 = a3;
  v90 = *MEMORY[0x277D85DE8];
  v88 = 0;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  *buffer = 0u;
  v74 = 0u;
  v10 = [(__CFString *)a3 length];
  v11 = objc_alloc_init(MEMORY[0x277CCAB48]);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v88 = &a9;
  theString = v9;
  v84 = 0;
  v85 = v10;
  CharactersPtr = CFStringGetCharactersPtr(v9);
  CStringPtr = 0;
  v82 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v9, 0x600u);
  }

  v86 = 0;
  v87 = 0;
  v83 = CStringPtr;
  v16 = v10 - 1;
  if (v10 >= 1)
  {
    v66 = v9;
    theDict = Mutable;
    v17 = 0;
    v62 = 0;
    v18 = 0;
    v68 = v10 - 1;
    v65 = v10;
    while (1)
    {
      v19 = v17 + 1;
      if (v17 < 0)
      {
        goto LABEL_52;
      }

      v20 = v85;
      if (v85 <= v17)
      {
        goto LABEL_52;
      }

      if (v82)
      {
        v21 = v82[v84 + v17];
      }

      else if (v83)
      {
        v21 = v83[v84 + v17];
      }

      else
      {
        if (v87 <= v17 || (v22 = v86, v86 > v17))
        {
          v23 = v17 - 4;
          if (v17 < 4)
          {
            v23 = 0;
          }

          if (v23 + 64 < v85)
          {
            v20 = v23 + 64;
          }

          v86 = v23;
          v87 = v20;
          v91.length = v20 - v23;
          v91.location = v84 + v23;
          CFStringGetCharacters(theString, v91, buffer);
          v16 = v68;
          v22 = v86;
        }

        v21 = buffer[v17 - v22];
      }

      if (v21 != 37)
      {
        goto LABEL_52;
      }

      v24 = v17 - v18;
      if (v17 > v18)
      {
        [v13 addObject:{-[__CFString substringWithRange:](v9, "substringWithRange:", v18, v24)}];
        v16 = v68;
      }

      if (v19 >= v10)
      {
LABEL_52:
        v41 = v18;
        goto LABEL_53;
      }

      v25 = 0;
      v26 = 0;
      v27 = ~v17;
      v28 = v17 + 65;
      v29 = v17 + 1;
      while (1)
      {
        v30 = v17 + 1;
        if (v19 >= 4)
        {
          v31 = 4;
        }

        else
        {
          v31 = v19;
        }

        v32 = v85;
        if (v85 <= v30)
        {
          goto LABEL_50;
        }

        if (v82)
        {
          v33 = v82[v84 + 1 + v17];
        }

        else if (v83)
        {
          v33 = v83[v84 + 1 + v17];
        }

        else
        {
          if (v87 <= v30 || (v34 = v86, v86 > v30))
          {
            v35 = v31 + v27;
            v36 = v28 - v31;
            v37 = v17 - v31;
            v38 = v37 + 1;
            v39 = v37 + 65;
            if (v39 >= v85)
            {
              v39 = v85;
            }

            v86 = v38;
            v87 = v39;
            if (v85 >= v36)
            {
              v32 = v36;
            }

            v92.location = v38 + v84;
            v63 = v26;
            v64 = v29;
            v92.length = v32 + v35;
            v40 = v25;
            CFStringGetCharacters(theString, v92, buffer);
            v26 = v63;
            v29 = v64;
            v25 = v40;
            v16 = v68;
            v34 = v86;
          }

          v33 = buffer[v17 + 1 - v34];
        }

        v41 = v17 + 2;
        if (v33 == 37 && v30 == v29)
        {
          [v13 addObject:{@"%", v24}];
          v16 = v68;
          v19 = v17 + 2;
          v9 = v66;
          goto LABEL_56;
        }

        if ((v33 - 48) <= 9u)
        {
          v26 = 10 * v26 + v33 - 48;
          goto LABEL_50;
        }

        if (v33 == 36)
        {
          v25 = v26;
          v29 = v17 + 2;
          goto LABEL_50;
        }

        if (v33 == 64)
        {
          break;
        }

LABEL_50:
        --v27;
        ++v28;
        ++v19;
        ++v17;
        if (v16 == v30)
        {
          v41 = v18;
          v19 = v65;
          v9 = v66;
          goto LABEL_61;
        }
      }

      if (v25)
      {
        v43 = v25;
      }

      else
      {
        v43 = (v62 + 1);
      }

      v44 = v29;
      v45 = objc_alloc_init(VSFormatArgument);
      v9 = v66;
      v45->formatSpecifier = [(__CFString *)v66 substringWithRange:v44, v41 - v44];
      CFDictionarySetValue(theDict, v43, v45);
      [v13 addObject:v45];

      v16 = v68;
      ++v62;
      v19 = v17 + 2;
LABEL_56:
      v10 = v65;
LABEL_53:
      v17 = v19;
      v18 = v41;
      if (v19 >= v10)
      {
LABEL_61:
        Mutable = theDict;
        if (v19 > v41)
        {
          [v13 addObject:{-[__CFString substringWithRange:](v9, "substringWithRange:", v41, v19 - v41)}];
        }

        break;
      }
    }
  }

  Count = CFDictionaryGetCount(Mutable);
  if (Count >= 1)
  {
    v47 = Count;
    v48 = 1;
    do
    {
      Value = CFDictionaryGetValue(Mutable, v48);
      if (Value)
      {
        v50 = Value;
        v51 = v88++;
        Value[3] = *v51;
        v52 = v88++;
        v50[2] = *v52;
      }

      ++v48;
      --v47;
    }

    while (v47);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v53 = [v13 countByEnumeratingWithState:&v69 objects:v89 count:{16, v62}];
  if (v53)
  {
    v54 = v53;
    v55 = *v70;
    do
    {
      for (i = 0; i != v54; ++i)
      {
        if (*v70 != v55)
        {
          objc_enumerationMutation(v13);
        }

        v57 = *(*(&v69 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v58 = v11;
          v59 = v57;
          v60 = 0;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          v60 = *(v57 + 16);
          v59 = *(v57 + 24);
          v58 = v11;
        }

        [v58 appendString:v59 withAttributes:v60];
      }

      v54 = [v13 countByEnumeratingWithState:&v69 objects:v89 count:16];
    }

    while (v54);
  }

  CFRelease(Mutable);

  return v11;
}

@end