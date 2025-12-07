@interface IdentifierGroupingUtils
+ (id)createIdentifier:(unsigned int)identifier interpretationGroupIndex:(unsigned int)index nodeIndex:(unsigned int)nodeIndex spanIdentifier:(id)spanIdentifier;
+ (id)getInterpretationGroupMax:(id)max;
+ (id)getInterpretationGroups:(id)groups;
+ (id)getTokenIndexIdentifier:(unsigned int)identifier interpretationGroup:(unsigned int)group nodeIndex:(unsigned int)index span:(id)span spanIdentifier:(id)spanIdentifier;
+ (id)limitAlignments:(id)alignments alignmentSpanDict:(id)dict;
+ (void)createIdentifierGroups:(id)groups alignmentSpanDict:(id)dict identifiers:(id)identifiers nodeIndex:(unsigned int)index interpretationGroupCurrentMax:(id)max tagSpans:(id)spans;
+ (void)createNonOverlapping:(id)overlapping interpretationGroup:(id)group start:(unint64_t)start interpretationGroups:(id)groups;
+ (void)sortAlignmentDict:(id)dict orderedIndexes:(id)indexes alignmentSpanDict:(id)spanDict;
@end

@implementation IdentifierGroupingUtils

+ (id)getInterpretationGroups:(id)groups
{
  groupsCopy = groups;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([groupsCopy count])
  {
    v6 = 0;
    do
    {
      v7 = objc_alloc(MEMORY[0x1E695DF70]);
      v8 = [groupsCopy objectAtIndexedSubscript:v6];
      v9 = [v7 initWithObjects:{v8, 0}];

      [self createNonOverlapping:groupsCopy interpretationGroup:v9 start:++v6 interpretationGroups:v5];
    }

    while (v6 < [groupsCopy count]);
  }

  return v5;
}

+ (void)createNonOverlapping:(id)overlapping interpretationGroup:(id)group start:(unint64_t)start interpretationGroups:(id)groups
{
  overlappingCopy = overlapping;
  groupCopy = group;
  groupsCopy = groups;
  if ([groupsCopy count] <= 0x1F)
  {
    if ([overlappingCopy count] <= start)
    {
      goto LABEL_13;
    }

    if ([overlappingCopy count] <= start)
    {
      goto LABEL_12;
    }

    v12 = 0;
    v13 = overlappingCopy;
    do
    {
      v14 = [v13 objectAtIndexedSubscript:start];
      lastObject = [groupCopy lastObject];
      v16 = [v14 overlaps:lastObject];

      if ((v16 & 1) == 0)
      {
        v17 = [groupCopy mutableCopy];
        [v17 addObject:v14];
        if (([MEMORY[0x1E69D1268] subset:v17 of:groupsCopy] & 1) == 0)
        {
          [self createNonOverlapping:overlappingCopy interpretationGroup:v17 start:start + 1 interpretationGroups:groupsCopy];
          v12 = 1;
        }
      }

      v18 = ++start >= [overlappingCopy count];
      v13 = overlappingCopy;
    }

    while (!v18);
    if ((v12 & 1) == 0)
    {
LABEL_12:
      if ([groupsCopy count] <= 0x1F)
      {
LABEL_13:
        if (([MEMORY[0x1E69D1268] subset:groupCopy of:groupsCopy] & 1) == 0)
        {
          [groupsCopy addObject:groupCopy];
        }
      }
    }
  }
}

+ (void)createIdentifierGroups:(id)groups alignmentSpanDict:(id)dict identifiers:(id)identifiers nodeIndex:(unsigned int)index interpretationGroupCurrentMax:(id)max tagSpans:(id)spans
{
  v134 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  dictCopy = dict;
  identifiersCopy = identifiers;
  maxCopy = max;
  spansCopy = spans;
  v14 = groupsCopy;
  v74 = spansCopy;
  if (groupsCopy && [groupsCopy count])
  {
    v70 = groupsCopy;
    v15 = [groupsCopy sortedArrayUsingSelector:sel_compareStartAndSize_];
    if ([v15 count] < 0xD)
    {
      v19 = v15;
    }

    else
    {
      v16 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v131 = "+[IdentifierGroupingUtils createIdentifierGroups:alignmentSpanDict:identifiers:nodeIndex:interpretationGroupCurrentMax:tagSpans:]";
        v132 = 1024;
        *v133 = 12;
        *&v133[4] = 2112;
        *&v133[6] = v15;
        _os_log_impl(&dword_1DC287000, v16, OS_LOG_TYPE_INFO, "%s Limiting the number span alignments to %d when creating interpretation groups. Given %@", buf, 0x1Cu);
      }

      v17 = [self limitAlignments:v15 alignmentSpanDict:dictCopy];

      v18 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v131 = "+[IdentifierGroupingUtils createIdentifierGroups:alignmentSpanDict:identifiers:nodeIndex:interpretationGroupCurrentMax:tagSpans:]";
        v132 = 2112;
        *v133 = v17;
        _os_log_impl(&dword_1DC287000, v18, OS_LOG_TYPE_INFO, "%s Interpretation group span alignments after limiting: %@", buf, 0x16u);
      }

      v19 = v17;
    }

    v20 = [self getInterpretationGroups:v19];
    if (maxCopy)
    {
      v97 = [maxCopy unsignedIntValue] + 1;
    }

    else
    {
      v97 = 0;
    }

    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    obj = v20;
    v14 = groupsCopy;
    v72 = [obj countByEnumeratingWithState:&v120 objects:v129 count:16];
    if (v72)
    {
      v71 = *v121;
      do
      {
        v21 = 0;
        do
        {
          if (*v121 != v71)
          {
            v22 = v21;
            objc_enumerationMutation(obj);
            v21 = v22;
          }

          v73 = v21;
          v23 = *(*(&v120 + 1) + 8 * v21);
          v116 = 0u;
          v117 = 0u;
          v118 = 0u;
          v119 = 0u;
          v24 = v23;
          v78 = [v24 countByEnumeratingWithState:&v116 objects:v128 count:16];
          if (v78)
          {
            v82 = 0;
            v25 = 0;
            v77 = *v117;
            v75 = v24;
            while (1)
            {
              for (i = 0; i != v78; ++i)
              {
                if (*v117 != v77)
                {
                  objc_enumerationMutation(v24);
                }

                v27 = *(*(&v116 + 1) + 8 * i);
                v28 = [MEMORY[0x1E696B098] valueWithNonretainedObject:v27];
                v29 = [dictCopy objectForKeyedSubscript:v28];

                usoGraph = [v29 usoGraph];
                if (!usoGraph)
                {
                  goto LABEL_81;
                }

                v114 = 0u;
                v115 = 0u;
                v112 = 0u;
                v113 = 0u;
                v79 = usoGraph;
                identifiers = [usoGraph identifiers];
                v32 = [identifiers countByEnumeratingWithState:&v112 objects:v127 count:16];
                v80 = i;
                if (!v32)
                {

                  v35 = 0;
                  v44 = 0;
                  goto LABEL_47;
                }

                v33 = v32;
                v92 = identifiers;
                v34 = 0;
                v94 = 0;
                v90 = 0;
                v35 = 0;
                v36 = *v113;
                do
                {
                  for (j = 0; j != v33; ++j)
                  {
                    if (*v113 != v36)
                    {
                      objc_enumerationMutation(v92);
                    }

                    v38 = *(*(&v112 + 1) + 8 * j);
                    nodeIndex = [v38 nodeIndex];
                    if (nodeIndex == [v27 nodeIndex])
                    {
                      if (v34)
                      {
                        goto LABEL_35;
                      }

                      if ([v29 hasInput])
                      {
                        v40 = [self getTokenIndexIdentifier:v25 interpretationGroup:v97 nodeIndex:index span:v29 spanIdentifier:v38];
                        if (v40)
                        {
                          [identifiersCopy addObject:v40];
                        }

LABEL_35:
                        v34 = 1;
                      }

                      else
                      {
                        v34 = 0;
                      }

                      v41 = [self createIdentifier:v25 interpretationGroupIndex:v97 nodeIndex:index spanIdentifier:v38];
                      groupIndex = [v38 groupIndex];
                      if (v35 <= groupIndex)
                      {
                        v35 = groupIndex;
                      }

                      [identifiersCopy addObject:v41];
                      v94 |= [v38 sourceComponent] == 1;

                      v90 = 1;
                      v82 = 1;
                      continue;
                    }
                  }

                  v33 = [v92 countByEnumeratingWithState:&v112 objects:v127 count:16];
                }

                while (v33);

                if (v90)
                {
                  v43 = v35 + 1;
                }

                else
                {
                  v43 = 0;
                }

                v25 = v43 + v25;
                v24 = v75;
                v44 = v94;
LABEL_47:
                if ((v82 & 1) != 0 && (v44 & 1) == 0)
                {
                  v110 = 0u;
                  v111 = 0u;
                  v108 = 0u;
                  v109 = 0u;
                  v45 = v74;
                  v83 = [v45 countByEnumeratingWithState:&v108 objects:v126 count:16];
                  if (v83)
                  {
                    v46 = 0;
                    v81 = *v109;
                    v86 = v27;
                    v87 = v29;
                    v85 = v45;
                    do
                    {
                      v47 = 0;
                      do
                      {
                        if (*v109 != v81)
                        {
                          v48 = v47;
                          objc_enumerationMutation(v45);
                          v47 = v48;
                        }

                        v84 = v47;
                        v49 = *(*(&v108 + 1) + 8 * v47);
                        v104 = 0u;
                        v105 = 0u;
                        v106 = 0u;
                        v107 = 0u;
                        v89 = v49;
                        usoGraph2 = [v49 usoGraph];
                        alignments = [usoGraph2 alignments];

                        v93 = alignments;
                        v52 = [alignments countByEnumeratingWithState:&v104 objects:v125 count:16];
                        if (v52)
                        {
                          v53 = v52;
                          v54 = *v105;
                          v88 = *v105;
                          do
                          {
                            v55 = 0;
                            v91 = v53;
                            do
                            {
                              if (*v105 != v54)
                              {
                                objc_enumerationMutation(v93);
                              }

                              v95 = v55;
                              v56 = *(*(&v104 + 1) + 8 * v55);
                              if ([v56 equalIndexes:v27])
                              {
                                v102 = 0u;
                                v103 = 0u;
                                v100 = 0u;
                                v101 = 0u;
                                usoGraph3 = [v89 usoGraph];
                                identifiers2 = [usoGraph3 identifiers];

                                v59 = [identifiers2 countByEnumeratingWithState:&v100 objects:v124 count:16];
                                if (v59)
                                {
                                  v60 = v59;
                                  v61 = *v101;
                                  do
                                  {
                                    for (k = 0; k != v60; ++k)
                                    {
                                      if (*v101 != v61)
                                      {
                                        objc_enumerationMutation(identifiers2);
                                      }

                                      v63 = *(*(&v100 + 1) + 8 * k);
                                      nodeIndex2 = [v63 nodeIndex];
                                      if (nodeIndex2 == [v56 nodeIndex])
                                      {
                                        v65 = [self createIdentifier:v25 interpretationGroupIndex:v97 nodeIndex:index spanIdentifier:v63];
                                        groupIndex2 = [v63 groupIndex];
                                        if (v35 <= groupIndex2)
                                        {
                                          v35 = groupIndex2;
                                        }

                                        [identifiersCopy addObject:v65];

                                        v46 = 1;
                                      }
                                    }

                                    v60 = [identifiers2 countByEnumeratingWithState:&v100 objects:v124 count:16];
                                  }

                                  while (v60);
                                }

                                v27 = v86;
                                v29 = v87;
                                v45 = v85;
                                v54 = v88;
                                v53 = v91;
                              }

                              v55 = v95 + 1;
                            }

                            while (v95 + 1 != v53);
                            v53 = [v93 countByEnumeratingWithState:&v104 objects:v125 count:16];
                          }

                          while (v53);
                        }

                        v47 = v84 + 1;
                      }

                      while (v84 + 1 != v83);
                      v83 = [v45 countByEnumeratingWithState:&v108 objects:v126 count:16];
                    }

                    while (v83);

                    if (v46)
                    {
                      v25 = v25 + v35 + 1;
                    }

                    v24 = v75;
                  }

                  else
                  {
                  }
                }

                usoGraph = v79;
                i = v80;
LABEL_81:
              }

              v78 = [v24 countByEnumeratingWithState:&v116 objects:v128 count:16];
              if (!v78)
              {

                v97 += v82 & 1;
                v14 = v70;
                goto LABEL_85;
              }
            }
          }

LABEL_85:
          v21 = v73 + 1;
        }

        while (v73 + 1 != v72);
        v72 = [obj countByEnumeratingWithState:&v120 objects:v129 count:16];
      }

      while (v72);
    }
  }
}

+ (void)sortAlignmentDict:(id)dict orderedIndexes:(id)indexes alignmentSpanDict:(id)spanDict
{
  v23 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  indexesCopy = indexes;
  spanDictCopy = spanDict;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [indexesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(indexesCopy);
        }

        v14 = [dictCopy objectForKeyedSubscript:*(*(&v18 + 1) + 8 * v13)];
        v15 = v14;
        if (v14 && [v14 count] >= 2)
        {
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __78__IdentifierGroupingUtils_sortAlignmentDict_orderedIndexes_alignmentSpanDict___block_invoke;
          v16[3] = &unk_1E862E7A0;
          v17 = spanDictCopy;
          [v15 sortUsingComparator:v16];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [indexesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

uint64_t __78__IdentifierGroupingUtils_sortAlignmentDict_orderedIndexes_alignmentSpanDict___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E696B098];
  v7 = a3;
  v8 = [v6 valueWithNonretainedObject:a2];
  v9 = [v5 objectForKeyedSubscript:v8];

  v10 = *(a1 + 32);
  v11 = [MEMORY[0x1E696B098] valueWithNonretainedObject:v7];

  v12 = [v10 objectForKeyedSubscript:v11];

  if (v9)
  {
    v13 = ![CDMServiceGraphUtil spanHasMatcherName:3 matchingSpan:v9];
    if (v12)
    {
LABEL_3:
      v14 = [CDMServiceGraphUtil spanHasMatcherName:3 matchingSpan:v12];
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 1;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  if ((v13 | v14))
  {
    v15 = v13 & v14;
  }

  else
  {
    v15 = -1;
  }

  return v15;
}

+ (id)limitAlignments:(id)alignments alignmentSpanDict:(id)dict
{
  v43 = *MEMORY[0x1E69E9840];
  alignmentsCopy = alignments;
  dictCopy = dict;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(alignmentsCopy, "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = alignmentsCopy;
  v7 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        v12 = MEMORY[0x1E695DEC8];
        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v11, "getStartIndex")}];
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v11, "getEndIndex")}];
        v15 = [v12 arrayWithObjects:{v13, v14, 0}];

        v16 = [dictionary objectForKeyedSubscript:v15];
        if (!v16)
        {
          v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [dictionary setObject:v16 forKeyedSubscript:v15];
          [v31 addObject:v15];
        }

        [v16 addObject:v11];
      }

      v8 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v8);
  }

  [self sortAlignmentDict:dictionary orderedIndexes:v31 alignmentSpanDict:dictCopy];
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  while ([v17 count] <= 0xB)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v18 = v31;
    v19 = [v18 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (!v19)
    {

      break;
    }

    v20 = v19;
    v21 = 0;
    v22 = *v34;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = [dictionary objectForKeyedSubscript:*(*(&v33 + 1) + 8 * j)];
        v25 = v24;
        if (v24 && [v24 count])
        {
          v26 = [v25 objectAtIndex:0];
          [v17 addObject:v26];

          [v25 removeObjectAtIndex:0];
          v21 = 1;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v20);

    if ((v21 & 1) == 0)
    {
      break;
    }
  }

  v27 = [v17 sortedArrayUsingSelector:sel_compareStartAndSize_];

  return v27;
}

+ (id)getTokenIndexIdentifier:(unsigned int)identifier interpretationGroup:(unsigned int)group nodeIndex:(unsigned int)index span:(id)span spanIdentifier:(id)spanIdentifier
{
  v8 = *&index;
  v9 = *&group;
  v10 = *&identifier;
  v30[3] = *MEMORY[0x1E69E9840];
  spanCopy = span;
  v13 = [self createIdentifier:v10 interpretationGroupIndex:v9 nodeIndex:v8 spanIdentifier:spanIdentifier];
  v29[0] = @"endTokenIndex";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(spanCopy, "endTokenIndex")}];
  v30[0] = v14;
  v29[1] = @"startTokenIndex";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(spanCopy, "startTokenIndex")}];
  v30[1] = v15;
  v29[2] = @"value";
  input = [spanCopy input];

  v30[2] = input;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];

  v24 = 0;
  v18 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v17 options:2 error:&v24];
  v19 = v24;
  if (v18)
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v18 encoding:4];
    [v13 setValue:v20];

    v21 = objc_alloc_init(MEMORY[0x1E69D1128]);
    [v21 setValue:*MEMORY[0x1E69D2498]];
    [v13 setNamespaceA:v21];
    [v13 setBackingAppBundleId:*MEMORY[0x1E69D2408]];
    [v13 setProbability:0];
    v22 = v13;
  }

  else
  {
    v21 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v26 = "+[IdentifierGroupingUtils getTokenIndexIdentifier:interpretationGroup:nodeIndex:span:spanIdentifier:]";
      v27 = 2112;
      v28 = v19;
      _os_log_impl(&dword_1DC287000, v21, OS_LOG_TYPE_INFO, "%s Unable to parse MatchingSpan token index JSON: %@", buf, 0x16u);
    }

    v22 = 0;
  }

  return v22;
}

+ (id)createIdentifier:(unsigned int)identifier interpretationGroupIndex:(unsigned int)index nodeIndex:(unsigned int)nodeIndex spanIdentifier:(id)spanIdentifier
{
  v6 = *&nodeIndex;
  v7 = *&index;
  spanIdentifierCopy = spanIdentifier;
  v10 = objc_opt_new();
  [spanIdentifierCopy copyTo:v10];
  [v10 setNodeIndex:v6];
  [v10 setInterpretationGroup:v7];
  LODWORD(v6) = [spanIdentifierCopy groupIndex];

  [v10 setGroupIndex:v6 + identifier];

  return v10;
}

+ (id)getInterpretationGroupMax:(id)max
{
  v19 = *MEMORY[0x1E69E9840];
  maxCopy = max;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  identifiers = [maxCopy identifiers];
  v5 = [identifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(identifiers);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 hasInterpretationGroup])
        {
          if (!v7 || (v11 = [v10 interpretationGroup], v11 > objc_msgSend(v7, "unsignedIntValue")))
          {
            v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{objc_msgSend(v10, "interpretationGroup")}];

            v7 = v12;
          }
        }

        else
        {
          [v10 setInterpretationGroup:0];
          if (!v7)
          {
            v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:0];
          }
        }
      }

      v6 = [identifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end