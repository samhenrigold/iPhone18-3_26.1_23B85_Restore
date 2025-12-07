@interface _EAREditDistance
- (_EAREditDistance)editDistanceWithRefText:(id)text hypText:(id)hypText caseInsensitive:(BOOL)insensitive removeWordSense:(BOOL)sense;
- (_EAREditDistance)editDistanceWithRefTokens:(id)tokens hypTokens:(id)hypTokens caseInsensitive:(BOOL)insensitive removeWordSense:(BOOL)sense;
- (void)editAlignmentWithRefText:(id)text hypText:(id)hypText placeholderSymbol:(id)symbol caseInsensitive:(BOOL)insensitive removeWordSense:(BOOL)sense completion:(id)completion;
- (void)editAlignmentWithRefTokens:(id)tokens hypTokens:(id)hypTokens placeholderSymbol:(id)symbol caseInsensitive:(BOOL)insensitive removeWordSense:(BOOL)sense completion:(id)completion;
@end

@implementation _EAREditDistance

- (_EAREditDistance)editDistanceWithRefTokens:(id)tokens hypTokens:(id)hypTokens caseInsensitive:(BOOL)insensitive removeWordSense:(BOOL)sense
{
  senseCopy = sense;
  insensitiveCopy = insensitive;
  tokensCopy = tokens;
  hypTokensCopy = hypTokens;
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v76 = 0;
  v12 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\\\\\S*$" options:0 error:&v76];
  if (!v76)
  {
    v74 = insensitiveCopy;
    v75 = senseCopy;
    v69 = v12;
    v66 = v11;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([tokensCopy count] != -1)
    {
      v15 = 0;
      do
      {
        v16 = objc_alloc_init(_EARAlignmentState);
        [(_EARAlignmentState *)v16 setNumberOfInsertions:0];
        [(_EARAlignmentState *)v16 setNumberOfSubstitutions:0];
        [(_EARAlignmentState *)v16 setNumberOfDeletions:v15];
        [(_EARAlignmentState *)v16 setTotalCost:v15];
        [v13 addObject:v16];
        v17 = objc_alloc_init(_EARAlignmentState);
        [v14 addObject:v17];

        ++v15;
      }

      while (v15 < [tokensCopy count] + 1);
    }

    if ([hypTokensCopy count])
    {
      v68 = 1;
      v72 = hypTokensCopy;
      v73 = tokensCopy;
      v70 = v13;
      v71 = v14;
      do
      {
        v18 = [v13 objectAtIndexedSubscript:0];
        v19 = [v18 copy];
        [v14 setObject:v19 atIndexedSubscript:0];

        v20 = [v14 objectAtIndexedSubscript:0];
        [v20 incrementInsertions];

        v21 = [v14 objectAtIndexedSubscript:0];
        [v21 incrementCost];

        if ([tokensCopy count])
        {
          v22 = 1;
          do
          {
            v23 = [v13 objectAtIndexedSubscript:v22];
            totalCost = [v23 totalCost];

            v25 = [v14 objectAtIndexedSubscript:v22 - 1];
            v26 = v13;
            totalCost2 = [v25 totalCost];

            v28 = [v26 objectAtIndexedSubscript:v22 - 1];
            totalCost3 = [v28 totalCost];

            v30 = [hypTokensCopy objectAtIndexedSubscript:v68 - 1];
            v31 = [tokensCopy objectAtIndexedSubscript:v22 - 1];
            if (v74)
            {
              lowercaseString = [v30 lowercaseString];

              lowercaseString2 = [v31 lowercaseString];

              v30 = lowercaseString;
              v31 = lowercaseString2;
            }

            if (v75)
            {
              v34 = [v69 stringByReplacingMatchesInString:v30 options:0 range:0 withTemplate:{objc_msgSend(v30, "length"), &stru_1F2D44B60}];

              v35 = [v69 stringByReplacingMatchesInString:v31 options:0 range:0 withTemplate:{objc_msgSend(v31, "length"), &stru_1F2D44B60}];

              v30 = v34;
              v31 = v35;
            }

            hypTokensCopy = v72;
            v36 = totalCost3 + ([v30 isEqualToString:v31] ^ 1);
            if (v36 > totalCost || v36 > totalCost2)
            {
              if (totalCost2 >= totalCost)
              {
                v13 = v70;
                v44 = [v70 objectAtIndexedSubscript:v22];
                v45 = [v44 copy];
                v14 = v71;
                [v71 setObject:v45 atIndexedSubscript:v22];

                v46 = [v71 objectAtIndexedSubscript:v22];
                [v46 setTotalCost:totalCost + 1];

                v40 = [v71 objectAtIndexedSubscript:v22];
                [v40 incrementInsertions];
              }

              else
              {
                v14 = v71;
                v41 = [v71 objectAtIndexedSubscript:v22 - 1];
                v42 = [v41 copy];
                [v71 setObject:v42 atIndexedSubscript:v22];

                v43 = [v71 objectAtIndexedSubscript:v22];
                [v43 setTotalCost:totalCost2 + 1];

                v40 = [v71 objectAtIndexedSubscript:v22];
                [v40 incrementDeletions];
                v13 = v70;
              }
            }

            else
            {
              v13 = v70;
              v37 = [v70 objectAtIndexedSubscript:v22 - 1];
              v38 = [v37 copy];
              v14 = v71;
              [v71 setObject:v38 atIndexedSubscript:v22];

              if (([v30 isEqualToString:v31] & 1) == 0)
              {
                v39 = [v71 objectAtIndexedSubscript:v22];
                [v39 incrementSubstitutions];
              }

              v40 = [v71 objectAtIndexedSubscript:v22];
              [v40 setTotalCost:v36];
            }

            ++v22;
            tokensCopy = v73;
          }

          while (v22 <= [v73 count]);
        }

        if ([v13 count])
        {
          v47 = 0;
          do
          {
            v48 = [v14 objectAtIndexedSubscript:v47];
            v49 = [v48 copy];
            [v13 setObject:v49 atIndexedSubscript:v47];

            ++v47;
          }

          while (v47 < [v13 count]);
        }

        ++v68;
      }

      while (v68 <= [hypTokensCopy count]);
    }

    if ([v13 count])
    {
      v50 = [v13 count] - 1;
      v51 = MEMORY[0x1E696AD98];
      v52 = [v13 objectAtIndexedSubscript:v50];
      v53 = [v51 numberWithInteger:{objc_msgSend(v52, "numberOfInsertions")}];
      v54 = v13;
      v11 = v67;
      [v67 setObject:v53 forKeyedSubscript:@"Insertions"];

      v55 = MEMORY[0x1E696AD98];
      v56 = [v54 objectAtIndexedSubscript:v50];
      v57 = [v55 numberWithInteger:{objc_msgSend(v56, "numberOfDeletions")}];
      [v67 setObject:v57 forKeyedSubscript:@"Deletions"];

      v58 = MEMORY[0x1E696AD98];
      v59 = [v54 objectAtIndexedSubscript:v50];
      v60 = [v58 numberWithInteger:{objc_msgSend(v59, "numberOfSubstitutions")}];
      [v67 setObject:v60 forKeyedSubscript:@"Substitutions"];

      v61 = MEMORY[0x1E696AD98];
      v62 = [v54 objectAtIndexedSubscript:v50];
      v63 = [v61 numberWithInteger:{objc_msgSend(v62, "totalCost")}];
      [v67 setObject:v63 forKeyedSubscript:@"EditDistance"];
    }

    else
    {
      v54 = v13;
      v11 = v67;
      [v67 setObject:&unk_1F2D541E8 forKeyedSubscript:@"Insertions"];
      [v67 setObject:&unk_1F2D541E8 forKeyedSubscript:@"Deletions"];
      [v67 setObject:&unk_1F2D541E8 forKeyedSubscript:@"Substitutions"];
      [v67 setObject:&unk_1F2D541E8 forKeyedSubscript:@"EditDistance"];
    }

    v64 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(tokensCopy, "count")}];
    [v11 setObject:v64 forKeyedSubscript:@"ReferenceSize"];

    v12 = v69;
  }

  return v11;
}

- (_EAREditDistance)editDistanceWithRefText:(id)text hypText:(id)hypText caseInsensitive:(BOOL)insensitive removeWordSense:(BOOL)sense
{
  senseCopy = sense;
  insensitiveCopy = insensitive;
  hypTextCopy = hypText;
  textCopy = text;
  v12 = objc_alloc_init(_EARNLTokenizer);
  [(_EARNLTokenizer *)v12 setToLowerCase:0];
  [(_EARNLTokenizer *)v12 setReplacePunctuation:0];
  v13 = [(_EARNLTokenizer *)v12 tokenize:textCopy];

  v14 = [(_EARNLTokenizer *)v12 tokenize:hypTextCopy];

  v15 = [(_EAREditDistance *)self editDistanceWithRefTokens:v13 hypTokens:v14 caseInsensitive:insensitiveCopy removeWordSense:senseCopy];

  return v15;
}

- (void)editAlignmentWithRefTokens:(id)tokens hypTokens:(id)hypTokens placeholderSymbol:(id)symbol caseInsensitive:(BOOL)insensitive removeWordSense:(BOOL)sense completion:(id)completion
{
  insensitiveCopy = insensitive;
  senseCopy = sense;
  v100[1] = *MEMORY[0x1E69E9840];
  tokensCopy = tokens;
  hypTokensCopy = hypTokens;
  symbolCopy = symbol;
  completionCopy = completion;
  v99 = tokensCopy;
  v15 = [tokensCopy count];
  v98 = hypTokensCopy;
  v16 = [hypTokensCopy count];
  if (!v15 || (v17 = v16) == 0)
  {
LABEL_11:
    (*(completionCopy + 2))(completionCopy, &unk_1F2D54200, 0, 0);
    goto LABEL_12;
  }

  for (i = 0; i != v15; ++i)
  {
    v19 = [v99 objectAtIndexedSubscript:i];

    if (v19 == symbolCopy)
    {
      goto LABEL_11;
    }
  }

  v20 = 0;
  do
  {
    v21 = [v98 objectAtIndexedSubscript:v20];

    if (v21 == symbolCopy)
    {
      goto LABEL_11;
    }

    ++v20;
  }

  while (v17 != v20);
  v90 = v15;
  v100[0] = 0;
  v22 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\\\\\S*$" options:0 error:v100];
  v25 = v22;
  if (v100[0])
  {
    (*(completionCopy + 2))(completionCopy, &unk_1F2D54200, 0, 0);
    goto LABEL_67;
  }

  v84[1] = v84;
  MEMORY[0x1EEE9AC00](v22, v23, v24);
  v27 = v84 - v26;
  v28 = 0;
  v91 = v29;
  v92 = v27;
  if (v29 > 1)
  {
    v30 = v17 + 1;
  }

  else
  {
    v30 = 1;
  }

  v31 = (v30 + 1) & 0xFFFFFFFFFFFFFFFELL;
  v32 = vdupq_n_s64(v30 - 1);
  v33 = v27 + 8;
  v34 = xmmword_1B5AE0060;
  v35 = vdupq_n_s64(2uLL);
  do
  {
    v36 = vmovn_s64(vcgeq_u64(v32, v34));
    if (v36.i8[0])
    {
      *(v33 - 1) = v28;
    }

    if (v36.i8[4])
    {
      *v33 = v28 + 1;
    }

    v28 += 2;
    v34 = vaddq_s64(v34, v35);
    v33 += 2;
  }

  while (v31 != v28);
  v85 = completionCopy;
  v87 = symbolCopy;
  v37 = &v92[8 * v17 + 16];
  v89 = 8 * v17 + 8;
  v38 = (v92 + 8);
  v39 = 1;
  do
  {
    v40 = v39 - 1;
    v41 = *&v92[8 * (v39 - 1) * v91] + 1;
    v93 = v39;
    v94 = v38;
    *&v92[8 * v39 * v91] = v41;
    v95 = v37;
    v42 = 1;
    do
    {
      v43 = [v98 objectAtIndexedSubscript:v42 - 1];
      v44 = [v99 objectAtIndexedSubscript:v40];
      if (insensitiveCopy)
      {
        lowercaseString = [v43 lowercaseString];

        lowercaseString2 = [v44 lowercaseString];

        v44 = lowercaseString2;
        v43 = lowercaseString;
      }

      if (senseCopy)
      {
        v47 = [v25 stringByReplacingMatchesInString:v43 options:0 range:0 withTemplate:{objc_msgSend(v43, "length"), &stru_1F2D44B60}];

        v48 = [v25 stringByReplacingMatchesInString:v44 options:0 range:0 withTemplate:{objc_msgSend(v44, "length"), &stru_1F2D44B60}];

        v44 = v48;
        v43 = v47;
      }

      v49 = *(v38 - 1);
      v50 = v49 + ([v43 isEqualToString:v44] ^ 1);
      v51 = *v38++;
      v52 = v51 + 1;
      v53 = *(v37 - 1);
      if (v51 + 1 >= v53 + 1)
      {
        v52 = v53 + 1;
      }

      if (v50 >= v52)
      {
        v50 = v52;
      }

      *v37 = v50;
      v37 += 8;

      ++v42;
    }

    while (v42 <= v17);
    v39 = v93 + 1;
    v37 = &v95[v89];
    v38 = (v94 + v89);
  }

  while (v93 + 1 <= v90);
  v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v95 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v55 = v90;
  v56 = v17;
  symbolCopy = v87;
  v57 = v54;
  v86 = v54;
  do
  {
    if (v55)
    {
      if (!v56)
      {
        v66 = 0;
        v65 = v55 - 1;
        goto LABEL_61;
      }

      v93 = v56 - 1;
      v58 = [v98 objectAtIndexedSubscript:?];
      v59 = v55 - 1;
      v60 = [v99 objectAtIndexedSubscript:v55 - 1];
      v94 = v55;
      if (insensitiveCopy)
      {
        lowercaseString3 = [v58 lowercaseString];

        lowercaseString4 = [v60 lowercaseString];

        v58 = lowercaseString3;
        v60 = lowercaseString4;
      }

      if (senseCopy)
      {
        v63 = [v25 stringByReplacingMatchesInString:v58 options:0 range:0 withTemplate:{objc_msgSend(v58, "length"), &stru_1F2D44B60}];

        v64 = [v25 stringByReplacingMatchesInString:v60 options:0 range:0 withTemplate:{objc_msgSend(v60, "length"), &stru_1F2D44B60}];

        v58 = v63;
      }

      else
      {
        v64 = v60;
      }

      v67 = v91;
      v68 = v92;
      v69 = &v92[8 * v59 * v91];
      v89 = v59;
      v70 = v93;
      v88 = *&v69[8 * v93];
      v71 = [v58 isEqualToString:v64];
      v72 = *&v69[8 * v56];
      v55 = v94;
      v73 = *&v68[8 * v94 * v67 + 8 * v70];
      v74 = v72 + 1;
      if (v72 + 1 >= v73 + 1)
      {
        v74 = v73 + 1;
      }

      v75 = v72 <= v73;
      if (v72 <= v73)
      {
        v76 = v56;
      }

      else
      {
        v76 = v70;
      }

      v77 = v88 + (v71 ^ 1u);
      if (v75 || v77 <= v74)
      {
        v65 = v89;
      }

      else
      {
        v65 = v94;
      }

      if (v77 <= v74)
      {
        v66 = v70;
      }

      else
      {
        v66 = v76;
      }

      v57 = v86;
      symbolCopy = v87;
    }

    else
    {
      v65 = 0;
      v66 = v56 - 1;
    }

    if (v65 == v55)
    {
      v79 = symbolCopy;
      goto LABEL_62;
    }

LABEL_61:
    v79 = [v99 objectAtIndexedSubscript:v65];
    v55 = v65;
LABEL_62:
    if (v66 == v56)
    {
      v80 = symbolCopy;
    }

    else
    {
      v80 = [v98 objectAtIndexedSubscript:v66];
    }

    v81 = v80;
    [v57 addObject:v79];
    [v95 addObject:v81];

    v56 = v66;
  }

  while (v55 | v66);
  ReverseArray(v57);
  v82 = v95;
  ReverseArray(v95);
  v83 = [MEMORY[0x1E696AD98] numberWithInteger:*&v92[8 * v91 * v90 + 8 * v17]];
  completionCopy = v85;
  v85[2](v85, v83, v57, v82);

LABEL_67:
LABEL_12:
}

- (void)editAlignmentWithRefText:(id)text hypText:(id)hypText placeholderSymbol:(id)symbol caseInsensitive:(BOOL)insensitive removeWordSense:(BOOL)sense completion:(id)completion
{
  senseCopy = sense;
  insensitiveCopy = insensitive;
  completionCopy = completion;
  symbolCopy = symbol;
  hypTextCopy = hypText;
  textCopy = text;
  v20 = objc_alloc_init(_EARNLTokenizer);
  [(_EARNLTokenizer *)v20 setToLowerCase:0];
  [(_EARNLTokenizer *)v20 setReplacePunctuation:0];
  v18 = [(_EARNLTokenizer *)v20 tokenize:textCopy];

  v19 = [(_EARNLTokenizer *)v20 tokenize:hypTextCopy];

  [(_EAREditDistance *)self editAlignmentWithRefTokens:v18 hypTokens:v19 placeholderSymbol:symbolCopy caseInsensitive:insensitiveCopy removeWordSense:senseCopy completion:completionCopy];
}

@end