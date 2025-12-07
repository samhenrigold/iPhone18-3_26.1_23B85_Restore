@interface SSSnippetUtilities
+ (void)createFormattedSnippetForResult:(id)result withContext:(id)context;
@end

@implementation SSSnippetUtilities

+ (void)createFormattedSnippetForResult:(id)result withContext:(id)context
{
  v61 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  contextCopy = context;
  v7 = contextCopy;
  if (resultCopy)
  {
    if (contextCopy)
    {
      if ([contextCopy isSearchToolClient])
      {
        rankingItem = [resultCopy rankingItem];
        v9 = SSCompactRankingAttrsGetValue([rankingItem attributes], 6uLL);

        if ([v9 length])
        {
          v10 = [[TPFTextPieceFinder alloc] initWithFullText:v9 maxLength:60 maxNumCandidates:100];
          if (!v10)
          {
            v23 = SSGeneralLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              +[SSSnippetUtilities createFormattedSnippetForResult:withContext:];
            }

            goto LABEL_48;
          }

          v48 = v9;
          v11 = v7;
          array = [MEMORY[0x1E695DF70] array];
          rawSearchTermsFromLLMQU = [v11 rawSearchTermsFromLLMQU];
          allObjects = [rawSearchTermsFromLLMQU allObjects];

          [array addObjectsFromArray:allObjects];
          personTokensFromLLMQU = [v11 personTokensFromLLMQU];
          allObjects2 = [personTokensFromLLMQU allObjects];

          [array addObjectsFromArray:allObjects2];
          v50 = v10;
          v49 = v7;
          if (collectTokens_onceToken != -1)
          {
            +[SSSnippetUtilities createFormattedSnippetForResult:withContext:];
          }

          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v17 = collectTokens_locationAnnotationsToCheck;
          v18 = [v17 countByEnumeratingWithState:&v55 objects:v60 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v56;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v56 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = [v11 valueForKey:*(*(&v55 + 1) + 8 * i)];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && [v22 length])
                {
                  [array addObject:v22];
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v55 objects:v60 count:16];
            }

            while (v19);
          }

          v23 = [array copy];
          v10 = v50;
          v24 = [(TPFTextPieceFinder *)v50 createPiecesWithTargets:v23];
          if (objc_msgSend_count(v24) && objc_msgSend_count(v23))
          {
            v25 = [[SSSnippetHighlightTool alloc] initWithTerms:v23];
            firstObject = [v24 firstObject];
            v27 = [(SSSnippetHighlightTool *)v25 makeHighlightedSnippet:firstObject];

            v28 = objc_msgSend_count(v27);
          }

          else
          {
            v27 = 0;
            v28 = objc_msgSend_count(0);
          }

          if (v28)
          {
            v46 = v24;
            v47 = v23;
            v29 = SSGeneralLog();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              +[SSSnippetUtilities createFormattedSnippetForResult:withContext:];
            }

            v30 = objc_opt_new();
            [resultCopy setFormattedSnippet:v30];

            firstObject2 = [MEMORY[0x1E695DF70] arrayWithCapacity:objc_msgSend_count(v27)];
            v51 = 0u;
            v52 = 0u;
            v53 = 0u;
            v54 = 0u;
            v45 = v27;
            v32 = v27;
            v33 = [v32 countByEnumeratingWithState:&v51 objects:v59 count:16];
            if (v33)
            {
              v34 = v33;
              v35 = *v52;
              do
              {
                for (j = 0; j != v34; ++j)
                {
                  if (*v52 != v35)
                  {
                    objc_enumerationMutation(v32);
                  }

                  v37 = *(*(&v51 + 1) + 8 * j);
                  v38 = objc_opt_new();
                  string = [v37 string];
                  [v38 setText:string];

                  [v38 setIsEmphasized:{+[SSSnippetHighlightTool isSegmentHighlighted:](SSSnippetHighlightTool, "isSegmentHighlighted:", v37)}];
                  [firstObject2 addObject:v38];
                }

                v34 = [v32 countByEnumeratingWithState:&v51 objects:v59 count:16];
              }

              while (v34);
            }

            formattedSnippet = [resultCopy formattedSnippet];
            [formattedSnippet setFormattedTextPieces:firstObject2];

            v9 = v48;
            v7 = v49;
            v10 = v50;
            v24 = v46;
            v23 = v47;
            v27 = v45;
            goto LABEL_47;
          }

          v41 = objc_msgSend_count(v24);
          firstObject2 = SSGeneralLog();
          v42 = os_log_type_enabled(firstObject2, OS_LOG_TYPE_DEBUG);
          v7 = v49;
          if (v41)
          {
            if (v42)
            {
              +[SSSnippetUtilities createFormattedSnippetForResult:withContext:];
            }

            v43 = MEMORY[0x1E69CA3A0];
            firstObject2 = [v24 firstObject];
            v44 = [v43 textWithString:firstObject2];
            [resultCopy setFormattedSnippet:v44];
          }

          else if (v42)
          {
            v9 = v48;
            [(SSSnippetUtilities *)v11 createFormattedSnippetForResult:v48 withContext:firstObject2];
            goto LABEL_47;
          }

          v9 = v48;
LABEL_47:

LABEL_48:
        }
      }

      else
      {
        v9 = SSGeneralLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          +[SSSnippetUtilities createFormattedSnippetForResult:withContext:];
        }
      }
    }

    else
    {
      v9 = SSGeneralLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[SSSnippetUtilities createFormattedSnippetForResult:withContext:];
      }
    }
  }

  else
  {
    v9 = SSGeneralLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[SSSnippetUtilities createFormattedSnippetForResult:withContext:];
    }
  }
}

@end