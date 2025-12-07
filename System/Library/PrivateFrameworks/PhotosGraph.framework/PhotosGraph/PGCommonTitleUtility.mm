@interface PGCommonTitleUtility
+ (BOOL)containsCelebrationForDateNodes:(id)nodes holidayName:(id *)name titleGenerationContext:(id)context graph:(id)graph;
+ (BOOL)isLargeCountryForAddressNode:(id)node locationHelper:(id)helper;
+ (_NSRange)_closestSpaceMatchFromMatches:(id)matches withUsedNameRange:(_NSRange)range searchForward:(BOOL)forward;
+ (id)addressNodesFromMomentNodes:(id)nodes;
+ (id)bestAddressNodeForMomentNodes:(id)nodes;
+ (id)dateNodesFromMomentNodes:(id)nodes;
+ (id)holidayNameForDateNodes:(id)nodes;
+ (id)locationLabelForDimension:(unint64_t)dimension;
+ (id)titleWithLineBreakForTitle:(id)title;
+ (id)titleWithLineBreakForTitle:(id)title andUsedNames:(id)names;
+ (id)titleWithNoLineBreakSpaceForTitle:(id)title andUsedNames:(id)names;
+ (unint64_t)dimensionForLabel:(id)label;
+ (void)startAndEndDateNodeFromDateNodes:(id)nodes startDateNode:(id *)node endDateNode:(id *)dateNode;
@end

@implementation PGCommonTitleUtility

+ (unint64_t)dimensionForLabel:(id)label
{
  labelCopy = label;
  if (dimensionForLabel__onceToken != -1)
  {
    dispatch_once(&dimensionForLabel__onceToken, &__block_literal_global_286);
  }

  v4 = [dimensionForLabel__dimensionLabelMapping indexOfObject:labelCopy];
  if (v4)
  {
    v5 = v4 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

void __42__PGCommonTitleUtility_dimensionForLabel___block_invoke()
{
  v2[10] = *MEMORY[0x277D85DE8];
  v2[0] = @"None";
  v2[1] = @"Area";
  v2[2] = @"Address";
  v2[3] = @"Number";
  v2[4] = @"Street";
  v2[5] = @"District";
  v2[6] = @"City";
  v2[7] = @"County";
  v2[8] = @"State";
  v2[9] = @"Country";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:10];
  v1 = dimensionForLabel__dimensionLabelMapping;
  dimensionForLabel__dimensionLabelMapping = v0;
}

+ (id)locationLabelForDimension:(unint64_t)dimension
{
  v11 = *MEMORY[0x277D85DE8];
  if (dimension <= 4)
  {
    if (dimension > 2)
    {
      if (dimension == 3)
      {
        v4 = @"Number";
      }

      else
      {
        v4 = @"Street";
      }

      goto LABEL_20;
    }

    if (dimension == 1)
    {
      v4 = @"Area";
      goto LABEL_20;
    }

    if (dimension == 2)
    {
      v4 = @"Address";
      goto LABEL_20;
    }
  }

  else
  {
    if (dimension <= 6)
    {
      if (dimension == 5)
      {
        v4 = @"District";
      }

      else
      {
        v4 = @"City";
      }

      goto LABEL_20;
    }

    switch(dimension)
    {
      case 7uLL:
        v4 = @"County";
        goto LABEL_20;
      case 8uLL:
        v4 = @"State";
        goto LABEL_20;
      case 9uLL:
        v4 = @"Country";
LABEL_20:
        v5 = v4;
        goto LABEL_21;
    }
  }

  v7 = +[PGLogging sharedLogging];
  loggingConnection = [v7 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    v9 = 134217984;
    dimensionCopy = dimension;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Couldn't match dimension %lu to label", &v9, 0xCu);
  }

  v4 = 0;
LABEL_21:

  return v4;
}

+ (id)titleWithLineBreakForTitle:(id)title
{
  titleCopy = title;
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v5 = [titleCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if ([v5 length] >= 0xC)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = [v5 length] >> 1;
    v6 = [v5 length];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__PGCommonTitleUtility_titleWithLineBreakForTitle___block_invoke;
    v13[3] = &unk_27887F880;
    v13[4] = &v14;
    [v5 enumerateSubstringsInRange:0 options:v6 usingBlock:{3, v13}];
    v7 = v15[3];
    if (v7 < [v5 length])
    {
      v8 = objc_msgSend(MEMORY[0x277CCA900], "characterSetWithCharactersInString:", @"([{");
      v9 = v15[3];
      if (v9 >= 2)
      {
        do
        {
          if (![v8 characterIsMember:{objc_msgSend(v5, "characterAtIndex:", v9 - 1)}])
          {
            break;
          }

          v9 = v15[3] - 1;
          v15[3] = v9;
        }

        while (v9 > 1);
      }
    }

    v10 = v15[3];
    if (v10 && v10 < [v5 length])
    {
      v11 = [v5 stringByReplacingCharactersInRange:v15[3] withString:{0, @"\n"}];

      v5 = v11;
    }

    _Block_object_dispose(&v14, 8);
  }

  return v5;
}

uint64_t __51__PGCommonTitleUtility_titleWithLineBreakForTitle___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, _BYTE *a7)
{
  v7 = *(*(result + 32) + 8);
  v8 = *(v7 + 24);
  if (v8 >= a5 && v8 - a5 < a6)
  {
    if (v8 >= a3 + (a4 >> 1))
    {
      v10 = a6;
    }

    else
    {
      v10 = 0;
    }

    *(v7 + 24) = a5 + v10;
    *a7 = 1;
  }

  return result;
}

+ (id)titleWithLineBreakForTitle:(id)title andUsedNames:(id)names
{
  v104 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  namesCopy = names;
  v87 = [titleCopy length];
  if (v87 <= 0xB)
  {
    v7 = titleCopy;
    goto LABEL_113;
  }

  v101 = 0;
  v8 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"[\\r\\n\\t\\f\\v ]+" options:64 error:&v101];
  v82 = v101;
  v83 = v8;
  v89 = [v8 matchesInString:titleCopy options:0 range:{0, objc_msgSend(titleCopy, "length")}];
  v91 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(namesCopy, "count")}];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v84 = namesCopy;
  obj = namesCopy;
  v9 = [obj countByEnumeratingWithState:&v97 objects:v103 count:16];
  if (!v9)
  {
    goto LABEL_45;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v98;
  do
  {
    v13 = 0;
    v85 = v11;
    v86 = -v11;
    do
    {
      if (*v98 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v97 + 1) + 8 * v13);
      v15 = [titleCopy rangeOfString:v14];
      v17 = v15;
      v18 = v16;
      if (v15)
      {
        v19 = v15 == 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
LABEL_13:
        v20 = 0;
        goto LABEL_14;
      }

      v28 = [self _closestSpaceMatchFromMatches:v89 withUsedNameRange:v15 searchForward:{v16, 0}];
      if (v28 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v86 != v13)
        {
          goto LABEL_13;
        }

        v30 = 0;
        v31 = v17;
      }

      else
      {
        v30 = v28 + v29;
        v31 = v17 - (v28 + v29);
        v32 = v17 <= v28 + v29 || v30 == 0x7FFFFFFFFFFFFFFFLL;
        if (v32 || v17 >= [titleCopy length])
        {
          goto LABEL_13;
        }
      }

      v20 = [titleCopy substringWithRange:{v30, v31}];
LABEL_14:
      if (v17 == 0x7FFFFFFFFFFFFFFFLL || (v21 = v17 + v18, v17 + v18 >= [titleCopy length]) || ((v22 = objc_msgSend(self, "_closestSpaceMatchFromMatches:withUsedNameRange:searchForward:", v89, v17, v18, 1), v22 != 0x7FFFFFFFFFFFFFFFLL) ? (v23 = v22 > v21) : (v23 = 0), !v23 || v21 == 0x7FFFFFFFFFFFFFFFLL || (v24 = v22, v22 >= objc_msgSend(titleCopy, "length"))))
      {
        v25 = 0;
      }

      else
      {
        v25 = [titleCopy substringWithRange:{v21, v24 - v21}];
      }

      if (v25 | v20)
      {
        if (!v20)
        {
          v20 = &stru_2843F5C58;
        }

        if (v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = &stru_2843F5C58;
        }

        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v20, v14, v27];
      }

      else
      {
        v26 = v14;
      }

      [v91 addObject:v26];

      ++v13;
    }

    while (v10 != v13);
    v11 = v85 + v10;
    v33 = [obj countByEnumeratingWithState:&v97 objects:v103 count:16];
    v10 = v33;
  }

  while (v33);
LABEL_45:

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v34 = v91;
  v35 = [v34 countByEnumeratingWithState:&v93 objects:v102 count:16];
  if (!v35)
  {

LABEL_111:
    v7 = [self titleWithLineBreakForTitle:titleCopy];
    goto LABEL_112;
  }

  v36 = v35;
  v37 = vcvtps_u32_f32(vcvts_n_f32_u64(v87, 1uLL));
  v38 = -1;
  v39 = *v94;
  v40 = -1;
  v41 = -1;
  v42 = -1;
  v92 = v34;
  do
  {
    for (i = 0; i != v36; ++i)
    {
      if (*v94 != v39)
      {
        objc_enumerationMutation(v92);
      }

      v44 = [titleCopy rangeOfString:*(*(&v93 + 1) + 8 * i)];
      if (v44 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v46 = v44 + v45;
        if ((v37 - v44) >= 0)
        {
          v47 = v37 - v44;
        }

        else
        {
          v47 = v44 - v37;
        }

        v48 = v37 - v46;
        if ((v37 - v46) < 0)
        {
          v48 = v46 - v37;
        }

        if (v47 >= v38)
        {
          v49 = v38;
        }

        else
        {
          v49 = v47;
        }

        if (v47 >= v38)
        {
          v50 = v41;
        }

        else
        {
          v50 = v44;
        }

        v51 = v47 >= v40;
        if (v47 >= v40)
        {
          v47 = v40;
        }

        else
        {
          v49 = v40;
        }

        if (v51)
        {
          v52 = v42;
        }

        else
        {
          v50 = v42;
          v52 = v44;
        }

        if (v44)
        {
          v38 = v49;
          v40 = v47;
          v41 = v50;
          v42 = v52;
        }

        if (v46 != v87)
        {
          if (v48 >= v40)
          {
            if (v48 < v38)
            {
              v38 = v48;
              v41 = v44 + v45;
            }
          }

          else
          {
            v38 = v40;
            v40 = v48;
            v41 = v42;
            v42 = v44 + v45;
          }
        }
      }
    }

    v34 = v92;
    v36 = [v92 countByEnumeratingWithState:&v93 objects:v102 count:16];
  }

  while (v36);

  if (v42 == -1)
  {
    goto LABEL_111;
  }

  if (v41 == -1)
  {
    v53 = v42;
  }

  else
  {
    v53 = v41;
  }

  v54 = 0x277CCA000;
  if (v87 > 0x16)
  {
LABEL_87:
    v57 = 0;
    goto LABEL_88;
  }

  if (v42 <= v53)
  {
    v55 = v53;
  }

  else
  {
    v55 = v42;
  }

  v56 = [titleCopy substringToIndex:v55];
  v57 = [titleCopy substringFromIndex:v55];
  v58 = [v56 length];
  if ([v57 length] * 1.5 < v58)
  {

    goto LABEL_87;
  }

  if (!v56)
  {
LABEL_88:
    v59 = [titleCopy substringToIndex:v42];
    v60 = [titleCopy substringFromIndex:v42];
    v61 = [titleCopy substringToIndex:v53];
    v62 = [titleCopy substringFromIndex:v53];
    v63 = [v59 length];
    if ((v63 - v37) >= 0)
    {
      v64 = v63 - v37;
    }

    else
    {
      v64 = v37 - v63;
    }

    v65 = [v61 length];
    if ((v65 - v37) >= 0)
    {
      v66 = v65 - v37;
    }

    else
    {
      v66 = v37 - v65;
    }

    punctuationCharacterSet = [MEMORY[0x277CCA900] punctuationCharacterSet];
    v68 = [v60 rangeOfCharacterFromSet:punctuationCharacterSet options:0];
    v69 = [v62 rangeOfCharacterFromSet:punctuationCharacterSet options:0];
    if (v68)
    {
      v70 = v64 >= v66;
    }

    else
    {
      v70 = 1;
    }

    v71 = !v70 || v69 == 0;
    if (v71)
    {
      v72 = v59;
    }

    else
    {
      v72 = v61;
    }

    if (v71)
    {
      v73 = v60;
    }

    else
    {
      v73 = v62;
    }

    v56 = v72;
    v74 = v73;
    v34 = v92;
    v75 = v74;

    v54 = 0x277CCA000uLL;
    v57 = v75;
  }

  whitespaceCharacterSet = [*(v54 + 2304) whitespaceCharacterSet];
  v77 = [v57 pg_stringByTrailingCharactersInSet:whitespaceCharacterSet options:1];

  if (([v77 isEqualToString:v57] & 1) == 0)
  {
    v78 = [v57 substringToIndex:{objc_msgSend(v57, "length") - objc_msgSend(v77, "length")}];
    v79 = v77;

    v80 = [v56 stringByAppendingString:v78];

    v57 = v79;
    v56 = v80;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v56, @"\n", v57];

LABEL_112:
  namesCopy = v84;

LABEL_113:

  return v7;
}

+ (id)titleWithNoLineBreakSpaceForTitle:(id)title andUsedNames:(id)names
{
  v20 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  namesCopy = names;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [namesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      v11 = titleCopy;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(namesCopy);
        }

        v12 = *(*(&v15 + 1) + 8 * v10);
        v13 = [v12 stringByReplacingOccurrencesOfString:@" " withString:@" "];
        titleCopy = [v11 stringByReplacingOccurrencesOfString:v12 withString:v13];

        ++v10;
        v11 = titleCopy;
      }

      while (v8 != v10);
      v8 = [namesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return titleCopy;
}

+ (_NSRange)_closestSpaceMatchFromMatches:(id)matches withUsedNameRange:(_NSRange)range searchForward:(BOOL)forward
{
  forwardCopy = forward;
  length = range.length;
  location = range.location;
  v40 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = matches;
  v7 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    v10 = location + length;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    v32 = 0x7FFFFFFFFFFFFFFFLL;
    v33 = 0;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13.location = [*(*(&v35 + 1) + 8 * i) range];
        if (v13.location != 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = v13.location;
          v15 = v13.length;
          v43.location = location;
          v43.length = length;
          v16 = NSIntersectionRange(v13, v43).length;
          v41.location = v14;
          v41.length = v15;
          v44.location = location;
          v44.length = length;
          v17 = NSUnionRange(v41, v44);
          v18 = v14 - v10 + v15;
          if (location <= v14)
          {
            v19 = location + length;
          }

          else
          {
            v18 = location - v14;
            v19 = v14;
          }

          if (v17.location == location && v17.length == length)
          {
            v18 = v15;
            v21 = v14;
          }

          else
          {
            v21 = v19;
          }

          if (v16)
          {
            v22 = v18;
          }

          else
          {
            v22 = v15;
          }

          if (v16)
          {
            v23 = v21;
          }

          else
          {
            v23 = v14;
          }

          if (forwardCopy)
          {
            if (v23 < v10)
            {
              continue;
            }
          }

          else if (location <= v23)
          {
            continue;
          }

          v24 = location - v23;
          if ((location - v23) < 0)
          {
            v24 = v23 - location;
          }

          v25 = location - (v22 + v23);
          if (v25 < 0)
          {
            v25 = v22 + v23 - location;
          }

          if (v24 >= v25)
          {
            v24 = v25;
          }

          v26 = v24 < v11;
          if (v24 < v11)
          {
            v11 = v24;
          }

          v27 = v33;
          if (v26)
          {
            v27 = v22;
          }

          v28 = v32;
          if (v26)
          {
            v28 = v23;
          }

          v32 = v28;
          v33 = v27;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (!v8)
      {
        goto LABEL_43;
      }
    }
  }

  v32 = 0x7FFFFFFFFFFFFFFFLL;
  v33 = 0;
LABEL_43:

  v29 = v32;
  v30 = v33;
  result.length = v30;
  result.location = v29;
  return result;
}

+ (void)startAndEndDateNodeFromDateNodes:(id)nodes startDateNode:(id *)node endDateNode:(id *)dateNode
{
  nodeCopy = node;
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = nodes;
  v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v23 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        localDate = [v12 localDate];
        if (!v7 || [v7 compare:localDate] == 1)
        {
          v14 = localDate;

          v15 = v12;
          v7 = v14;
          v10 = v15;
        }

        if (!v8 || [v8 compare:localDate] == -1)
        {
          v16 = localDate;

          v17 = v12;
          v8 = v16;
          v9 = v17;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  if (nodeCopy)
  {
    v18 = v10;
    *nodeCopy = v10;
  }

  if (dateNode)
  {
    v19 = v9;
    *dateNode = v9;
  }
}

+ (id)bestAddressNodeForMomentNodes:(id)nodes
{
  v24 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [nodesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(nodesCopy);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        bestAddressNode = [v10 bestAddressNode];
        v12 = [bestAddressNode anyEdgeFromNode:v10];
        if (!v6 || ([v6 relevance], v14 = v13, objc_msgSend(v12, "relevance"), v14 < v15))
        {
          v16 = v12;

          v17 = bestAddressNode;
          v6 = v16;
          v7 = v17;
        }
      }

      v5 = [nodesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v7;
}

+ (id)dateNodesFromMomentNodes:(id)nodes
{
  v17 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  v4 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = nodesCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        dateNodes = [*(*(&v12 + 1) + 8 * i) dateNodes];
        [v4 unionSet:dateNodes];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)holidayNameForDateNodes:(id)nodes
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  nodesCopy = nodes;
  v4 = [nodesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(nodesCopy);
        }

        collection = [*(*(&v18 + 1) + 8 * i) collection];
        holidayNodes = [collection holidayNodes];

        array = [holidayNodes array];
        v11 = [array sortedArrayUsingComparator:&__block_literal_global_5777];

        firstObject = [v11 firstObject];
        v13 = firstObject;
        if (firstObject)
        {
          name = [firstObject name];
          v15 = name;
          if (name && [name length])
          {
            v16 = [MEMORY[0x277D276C8] localizedNameForName:v15];

            goto LABEL_14;
          }
        }
      }

      v5 = [nodesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_14:

  return v16;
}

uint64_t __48__PGCommonTitleUtility_holidayNameForDateNodes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  if ([v5 length])
  {
    v7 = [MEMORY[0x277D276C8] localizedNameForName:v5];
  }

  else
  {
    v7 = &stru_2843F5C58;
  }

  if ([v6 length])
  {
    v8 = [MEMORY[0x277D276C8] localizedNameForName:v6];
  }

  else
  {
    v8 = &stru_2843F5C58;
  }

  if ([(__CFString *)v7 length]|| ![(__CFString *)v8 length])
  {
    if ([(__CFString *)v8 length]|| ![(__CFString *)v7 length])
    {
      v9 = [(__CFString *)v7 localizedCompare:v8];
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

+ (BOOL)containsCelebrationForDateNodes:(id)nodes holidayName:(id *)name titleGenerationContext:(id)context graph:(id)graph
{
  v54 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  contextCopy = context;
  graphCopy = graph;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = nodesCopy;
  v9 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
  v10 = 0;
  if (v9)
  {
    v33 = *v46;
    v11 = &selRef_assetIsSafeForWidgetDisplay_;
LABEL_3:
    v39 = 0;
    v30 = v11[375];
    v32 = v9;
    while (1)
    {
      if (*v46 != v33)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v45 + 1) + 8 * v39);
      context = objc_autoreleasePoolPush();
      collection = [v12 collection];
      holidayNodes = [collection holidayNodes];

      v36 = [(PGGraphEdgeCollection *)PGGraphCelebratingEdgeCollection edgesToNodes:holidayNodes];
      holidayNodes2 = [v36 holidayNodes];
      holidayNames = [holidayNodes2 holidayNames];
      v16 = v10;
      v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
      localDate = [v12 localDate];
      holidayService = [contextCopy holidayService];
      infoNode = [graphCopy infoNode];
      locale = [infoNode locale];
      countryCode = [locale countryCode];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __97__PGCommonTitleUtility_containsCelebrationForDateNodes_holidayName_titleGenerationContext_graph___block_invoke;
      v41[3] = &unk_27887F838;
      v43 = &v49;
      nameCopy = name;
      v23 = v17;
      v42 = v23;
      [holidayService enumerateEventRulesWithNames:holidayNames betweenLocalDate:localDate andLocalDate:localDate supportedCountryCode:countryCode usingBlock:v41];

      v10 = v16;
      v24 = *(v50 + 24);
      if (((name != 0) & v24) == 1)
      {
        v25 = [v23 sortedArrayUsingSelector:v30];
        firstObject = [v25 firstObject];

        v10 = firstObject;
      }

      objc_autoreleasePoolPop(context);
      v11 = &selRef_assetIsSafeForWidgetDisplay_;
      if (v24)
      {
        break;
      }

      if (v32 == ++v39)
      {
        v9 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (name)
  {
    v27 = v10;
    *name = v10;
  }

  v28 = *(v50 + 24);

  _Block_object_dispose(&v49, 8);
  return v28 & 1;
}

void __97__PGCommonTitleUtility_containsCelebrationForDateNodes_holidayName_titleGenerationContext_graph___block_invoke(void *a1, void *a2)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 24) = 1;
  if (v2)
  {
    v3 = a1[4];
    v4 = [a2 localizedName];
    [v3 addObject:v4];
  }
}

+ (BOOL)isLargeCountryForAddressNode:(id)node locationHelper:(id)helper
{
  v4 = [helper countryNodeFromAddressNode:node];
  anyNode = [v4 anyNode];

  name = [anyNode name];
  LOBYTE(v4) = [PGCountrySize isLargeCountry:name];

  return v4;
}

+ (id)addressNodesFromMomentNodes:(id)nodes
{
  nodesCopy = nodes;
  anyObject = [nodesCopy anyObject];
  graph = [anyObject graph];

  if (graph)
  {
    v6 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithSet:nodesCopy graph:graph];
    addressNodes = [(PGGraphMomentNodeCollection *)v6 addressNodes];
    v8 = [addressNodes set];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB98] set];
  }

  return v8;
}

@end