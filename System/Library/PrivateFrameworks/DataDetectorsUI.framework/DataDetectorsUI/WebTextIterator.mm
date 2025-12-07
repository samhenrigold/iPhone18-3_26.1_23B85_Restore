@interface WebTextIterator
- (id)dd_doUrlificationForQuery:(void *)query forResults:(void *)results referenceDate:(void *)date document:(_BYTE *)document DOMWasModified:(uint64_t)modified relevantResults:(void *)relevantResults URLificationBlock:;
- (uint64_t)dd_newQueryStopRange:(void *)range;
@end

@implementation WebTextIterator

- (uint64_t)dd_newQueryStopRange:(void *)range
{
  if (!range)
  {
    return 0;
  }

  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
  v4 = CFCharacterSetGetPredefined(kCFCharacterSetNewline);
  v24 = DDScanQueryCreate();
  if (([range atEnd] & 1) == 0)
  {
    alloc = *MEMORY[0x277CBECE8];
    v5 = -1;
    do
    {
      v6 = v5++;
      currentTextLength = [range currentTextLength];
      if (currentTextLength)
      {
        v8 = currentTextLength;
        v23 = v6;
        v25 = v5;
        currentTextPointer = [range currentTextPointer];
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        do
        {
          if (!CFCharacterSetIsCharacterMember(Predefined, *(currentTextPointer + 2 * v10)))
          {
            v19 = CFStringCreateWithCharacters(alloc, [range currentTextPointer], objc_msgSend(range, "currentTextLength"));
            v5 = v25;
            DDScanQueryAddTextFragment();
            CFRelease(v19);
            goto LABEL_26;
          }

          IsCharacterMember = CFCharacterSetIsCharacterMember(v4, *(currentTextPointer + 2 * v10));
          v15 = *(currentTextPointer + 2 * v10);
          v16 = (v15 == 9) | v13;
          if (IsCharacterMember)
          {
            v16 = v13;
            v11 = 1;
          }

          if (v15 == 160)
          {
            v13 = (v12 > 1) | v16;
          }

          else
          {
            v13 = v16;
          }

          if (v15 == 160)
          {
            ++v12;
          }

          else
          {
            v12 = 0;
          }

          ++v10;
        }

        while (v8 != v10);
        if (v11)
        {
          DDScanQueryAddLineBreak();
          v17 = v23;
          v5 = v25;
          if (!a2)
          {
            goto LABEL_26;
          }

          v18 = 4999;
        }

        else
        {
          DDScanQueryAddSeparator();
          v17 = v23;
          v5 = v25;
          if (!a2)
          {
            goto LABEL_26;
          }

          v18 = 9999;
        }

        if (v17 > v18)
        {
          goto LABEL_28;
        }
      }

      else
      {
        DDScanQueryAddSeparator();
        if (a2 && v6 > 999)
        {
LABEL_28:
          *a2 = [range currentRange];
          return v24;
        }
      }

LABEL_26:
      [range advance];
    }

    while (([range atEnd] & 1) == 0);
  }

  return v24;
}

- (id)dd_doUrlificationForQuery:(void *)query forResults:(void *)results referenceDate:(void *)date document:(_BYTE *)document DOMWasModified:(uint64_t)modified relevantResults:(void *)relevantResults URLificationBlock:
{
  v178 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  resultsCopy = results;
  dateCopy = date;
  relevantResultsCopy = relevantResults;
  selfCopy = self;
  if (!self)
  {
    goto LABEL_137;
  }

  v127 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v171 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v173 = 0u;
  v174 = 0u;
  v175 = 0u;
  v176 = 0u;
  v128 = queryCopy;
  obj = queryCopy;
  v14 = [obj countByEnumeratingWithState:&v173 objects:v177 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v174;
    v18 = *MEMORY[0x277D04170];
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v174 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v173 + 1) + 8 * i);
        v21 = [MEMORY[0x277CCAA70] indexPathWithIndex:v16];
        Type = DDResultGetType();
        if (CFStringCompare(Type, v18, 0))
        {
          [v171 addObject:v20];
          [v13 addObject:v21];
        }

        else
        {
          SubResults = DDResultGetSubResults();
          [v171 addObjectsFromArray:SubResults];
          if ([SubResults count])
          {
            v24 = 0;
            do
            {
              v25 = [v21 indexPathByAddingIndex:v24];
              [v13 addObject:v25];

              ++v24;
            }

            while (v24 < [SubResults count]);
          }
        }

        ++v16;
      }

      v15 = [obj countByEnumeratingWithState:&v173 objects:v177 count:16];
    }

    while (v15);
  }

  v26 = v171;
  v27 = [selfCopy dd_collectDDRangesForQuery:a2 forResults:v171];
  if (!v27)
  {
    self = 0;
    queryCopy = v128;
    v120 = v127;
    goto LABEL_136;
  }

  v28 = [v171 count];
  queryCopy = v128;
  if ([v27 count] != v28)
  {
    DDLog();
    v29 = CFTimeZoneCopyDefault();
    goto LABEL_130;
  }

  v29 = CFTimeZoneCopyDefault();
  v133 = v28;
  if (!v28)
  {
LABEL_130:
    CFRelease(v29);
    v30 = 0;
    v121 = 0;
    v167 = 0;
    v118 = 0;
    documentCopy3 = document;
    v120 = v127;
    goto LABEL_133;
  }

  cf = v29;
  v30 = 0;
  v161 = 0;
  v162 = 0;
  v134 = 0;
  v157 = 0;
  v165 = 0;
  v167 = 0;
  v31 = 0;
  v32 = 4294901760;
  v125 = v27;
  v33 = v133;
  do
  {
    v34 = [v26 objectAtIndex:{v31, v123, MatchedString}];
    v151 = v31;
    v35 = [v27 objectAtIndex:v31];
    null = [MEMORY[0x277CBEB68] null];
    v37 = [v35 isEqual:null];

    if (!v37)
    {
      QueryRangeForURLification = DDResultGetQueryRangeForURLification();
      v40 = QueryRangeForURLification;
      v41 = v32 >> 16;
      if (v41 >= QueryRangeForURLification >> 16 && (v41 > QueryRangeForURLification >> 16 || SHIDWORD(v32) >= SHIDWORD(QueryRangeForURLification)))
      {
        v123 = v34;
        MatchedString = DDResultGetMatchedString();
        DDLog();
        goto LABEL_125;
      }

      v42 = v27;
      v43 = v26;
      v44 = v32;
      v149 = QueryRangeForURLification >> 16;
      v135 = v39;
      v45 = [v13 objectAtIndex:v151];
      dd_stringValue = [v45 dd_stringValue];

      v142 = dd_stringValue;
      v141 = relevantResultsCopy[2](relevantResultsCopy, v34, dd_stringValue, resultsCopy, cf);
      if (!v141)
      {
        v32 = v44;
        v26 = v43;
        v27 = v42;
LABEL_124:
        v33 = v133;

        goto LABEL_125;
      }

      v47 = [v35 objectAtIndex:0];
      lastObject = [v35 lastObject];
      v140 = v47;
      node = [v47 node];
      v139 = lastObject;
      node2 = [lastObject node];
      context = objc_autoreleasePoolPush();
      v172 = 0;
      v159 = node;
      v148 = node2;
      v51 = [node dd_searchForLinkRemovingExistingDDLinksWithEndNode:node2 didModifyDOM:&v172];
      v130 = v172;
      v131 = v51;
      if (v51)
      {
        v52 = v167;
LABEL_123:
        v167 = v52;
        v134 = v130 & 1 | v134 & 1 | ((v131 & 1) == 0);
        objc_autoreleasePoolPop(context);

        v32 = v135;
        v26 = v171;
        v27 = v125;
        goto LABEL_124;
      }

      v54 = v149;
      v52 = v167;
      if (v149 > v135 >> 16)
      {
        goto LABEL_123;
      }

      v55 = v135 >> 16;
      v137 = v40 >> 32;
      v155 = 1;
      v56 = v149;
      v152 = v55;
      while (1)
      {
        v153 = [v35 objectAtIndex:v56 - v54];
        node3 = [v153 node];
        v58 = v56 <= v55 ? v55 : v56;
        while (v58 != v56)
        {
          v59 = v56 + 1;
          v60 = [v35 objectAtIndex:1 - v149 + v56];
          node4 = [v60 node];

          v56 = v59;
          if (node4 != node3)
          {
            v58 = v59 - 1;
            break;
          }
        }

        v62 = v162;
        if (v162 == node3)
        {
          obja = 0;
        }

        else
        {
          if (v157 && v162 != 0)
          {
            v63 = [v52 substringFromIndex:v165];
            [v162 setData:v63];
          }

          v64 = node3;
          obja = [v64 data];
          v165 = 0;
          v52 = 0;
          v157 = 0;
          v62 = v64;
        }

        parentNode = [node3 parentNode];
        if (node3 == v159)
        {
          v65 = [v140 startOffset] + v137;
        }

        else
        {
          v65 = 0;
        }

        v162 = v62;
        if (node3 == v148)
        {
          v66 = [v139 startOffset] + (v135 >> 32);
          v68 = v161;
          v67 = v161;
        }

        else
        {
          if (obja)
          {
            v66 = [obja length];
            v67 = 0;
          }

          else
          {
            v69 = [v52 length];
            v67 = 0;
            v66 = v69 - v165;
          }

          v68 = v161;
        }

        v150 = v66;
        v168 = v52;
        if (node3 == v159 && v30 == node3)
        {
          v71 = v68;
        }

        else
        {
          v71 = 0;
        }

        v146 = v66 - v67;
        if (v30 == node3)
        {
          v72 = v66 - v67;
        }

        else
        {
          v72 = v66;
        }

        v163 = v72;
        if (!qword_280B122A0)
        {
          whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
          invertedSet = [whitespaceAndNewlineCharacterSet invertedSet];
          v75 = qword_280B122A0;
          qword_280B122A0 = invertedSet;
        }

        v76 = v65 - v71;
        v77 = *(*(a2 + 16) + 48 * v58 + 40);
        v154 = v30;
        if (obja)
        {
          v78 = obja;
          v79 = v76;
        }

        else
        {
          v78 = v168;
          v79 = v76 + v165;
        }

        v80 = v77 & 0x18000000;
        v160 = v78;
        v81 = [v78 rangeOfCharacterFromSet:qword_280B122A0 options:0 range:{v79, v163 - v76}];
        if (v82)
        {
          break;
        }

        v92 = v80 != 0;
        v30 = v154;
        v155 |= v92;
LABEL_122:

        v56 = v58 + 1;
        v55 = v135 >> 16;
        v52 = v168;
        v54 = v149;
        if (v58 >= v152)
        {
          goto LABEL_123;
        }
      }

      if (v155)
      {
        v83 = v81 - v79;
      }

      else
      {
        v83 = 0;
      }

      v84 = v163 - v76 - v83;
      v85 = v58 != v152 && v80 == 0;
      v86 = !v85;
      v147 = v86;
      if (!v85)
      {
        if (v155)
        {
          v79 = v81;
        }

        v87 = [v160 rangeOfCharacterFromSet:qword_280B122A0 options:4 range:{v79, v84}];
        v84 = v88 - v79 + v87;
      }

      v89 = v83 + v76;
      v90 = v168;
      v91 = obja;
      v143 = v84;
      if (v89)
      {
        if (obja)
        {
          [obja substringToIndex:v89];
        }

        else
        {
          [v168 substringWithRange:{v165, v89}];
        }
        v93 = ;
        v94 = [dateCopy createTextNode:v93];
        v95 = [parentNode insertBefore:v94 refChild:node3];

        v84 = v143;
        v90 = v168;
      }

      if (obja)
      {
        v96 = obja;
        v97 = v89;
      }

      else
      {
        v97 = v89 + v165;
        v96 = v90;
      }

      v156 = [v96 substringWithRange:{v97, v84}];
      v98 = [dateCopy createTextNode:v156];
      v99 = [dateCopy createElement:@"a"];
      if (objc_opt_respondsToSelector())
      {
        if (objc_opt_respondsToSelector())
        {
          [v99 setDir:@"ltr"];
        }

        [v99 setHref:v141];
        if (!v165)
        {
          v100 = obja ? obja : v90;
          if (v143 == [v100 length])
          {
            parentElement = [v162 parentElement];
            v102 = [parentElement getAttributeNode:@"color"];

            if (v102)
            {
              style = [v102 style];
              cssText = [style cssText];
              [v99 setAttribute:@"style" value:cssText];
            }

            v90 = v168;
            v91 = obja;
          }
        }
      }

      v105 = [v99 appendChild:v98];
      v106 = [parentNode insertBefore:v99 refChild:node3];
      [v99 setAttribute:@"x-apple-data-detectors" value:@"true"];
      v107 = DDResultGetCategory() - 1;
      if (v107 > 4)
      {
        v108 = 0;
      }

      else
      {
        v108 = off_2782912A0[v107];
      }

      [v99 setAttribute:@"x-apple-data-detectors-type" value:v108];
      [v99 setAttribute:@"x-apple-data-detectors-result" value:v142];
      if (v91)
      {
        v109 = [v91 length];
      }

      else
      {
        v109 = [v90 length] - v165;
      }

      v110 = v163 < v109;
      if (v163 >= v109)
      {
        data = [node3 data];
        v114 = [data length];

        if (v114)
        {
          [node3 setData:&stru_282C1E0A8];
        }

        v162 = 0;
        v165 = 0;
        v168 = 0;
        v30 = v154;
        v111 = v161;
        goto LABEL_118;
      }

      v30 = v154;
      v111 = v161;
      if (v157)
      {
        v112 = v163 + v165;
      }

      else
      {
        if (v168 != obja)
        {
          v158 = [obja copy];

          v111 = v161;
          v165 = v163;
          v168 = v158;
LABEL_118:
          if (v30 == node3)
          {
            v116 = v146 + v111;
          }

          else
          {
            v115 = node3;

            v30 = v115;
            v116 = v150;
          }

          v155 = v147;
          v157 = v110;
          v161 = v116;
          goto LABEL_122;
        }

        v112 = v163;
      }

      v165 = v112;
      goto LABEL_118;
    }

    if ((_MergedGlobals_4 & 1) == 0)
    {
      v123 = v34;
      DDLog();
      _MergedGlobals_4 = 1;
    }

LABEL_125:

    v31 = v151 + 1;
  }

  while (v151 + 1 != v33);
  CFRelease(cf);
  if (v157)
  {
    v117 = [v167 substringFromIndex:v165];
    v118 = v162;
    [v162 setData:v117];

    queryCopy = v128;
    documentCopy3 = document;
    v120 = v127;
  }

  else
  {
    queryCopy = v128;
    documentCopy3 = document;
    v120 = v127;
    v118 = v162;
  }

  v121 = v134;
LABEL_133:

  if (documentCopy3)
  {
    *documentCopy3 = v121 & 1;
  }

  self = v120;

LABEL_136:
LABEL_137:

  return self;
}

@end