@interface SFSearchResult(VisualCat)
- (void)processVisualCATResultSynchronously;
- (void)processVisualCATResultSynchronouslyUsingPatternClass:()VisualCat;
@end

@implementation SFSearchResult(VisualCat)

- (void)processVisualCATResultSynchronouslyUsingPatternClass:()VisualCat
{
  v77 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    card = [self card];
    cardSections = [card cardSections];
    if ([cardSections count])
    {
    }

    else
    {
      inlineCard = [self inlineCard];
      cardSections2 = [inlineCard cardSections];
      v9 = [cardSections2 count];

      if (!v9)
      {
        return;
      }
    }

    card2 = [self card];
    cardSections3 = [card2 cardSections];
    array = cardSections3;
    if (!cardSections3)
    {
      array = [MEMORY[0x1E695DEC8] array];
    }

    inlineCard2 = [self inlineCard];
    cardSections4 = [inlineCard2 cardSections];
    if (cardSections4)
    {
      v15 = [array arrayByAddingObjectsFromArray:cardSections4];
    }

    else
    {
      array2 = [MEMORY[0x1E695DEC8] array];
      v15 = [array arrayByAddingObjectsFromArray:array2];
    }

    if (!cardSections3)
    {
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = v15;
    v54 = [obj countByEnumeratingWithState:&v62 objects:v72 count:16];
    if (v54)
    {
      v53 = *v63;
      do
      {
        v17 = 0;
        do
        {
          if (*v63 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v62 + 1) + 8 * v17);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v55 = v18;
            ptr = [v55 pattern_model];
            pattern_template_directory = [ptr pattern_template_directory];
            if (pattern_template_directory)
            {
              goto LABEL_31;
            }

            v66 = 0;
            v67 = &v66;
            v68 = 0x2050000000;
            v20 = getDEExecutorClass_softClass;
            v69 = getDEExecutorClass_softClass;
            if (!getDEExecutorClass_softClass)
            {
              *&buf = MEMORY[0x1E69E9820];
              *(&buf + 1) = 3221225472;
              v74 = __getDEExecutorClass_block_invoke;
              v75 = &unk_1E7AC5EA0;
              v76 = &v66;
              __getDEExecutorClass_block_invoke(&buf);
              v20 = v67[3];
            }

            v21 = v20;
            _Block_object_dispose(&v66, 8);
            v22 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/Assistant/FlowDelegatePlugins/InformationFlowPlugin.bundle"];
            if (PARLogHandleForCategory_onceToken_23 != -1)
            {
              dispatch_once(&PARLogHandleForCategory_onceToken_23, &__block_literal_global_24);
            }

            v23 = PARLogHandleForCategory_logHandles_4_25;
            if (os_log_type_enabled(PARLogHandleForCategory_logHandles_4_25, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v22;
              _os_log_debug_impl(&dword_1B1064000, v23, OS_LOG_TYPE_DEBUG, "Falling back to default template path from bundle %@.", &buf, 0xCu);
            }

            pattern_template_directory = [v20 bundleTemplateDir:v22];
            if (pattern_template_directory)
            {

LABEL_31:
              v24 = [MEMORY[0x1E695DFF8] fileURLWithPath:pattern_template_directory isDirectory:1];
              v25 = v24;
              if (v24)
              {
                v51 = v24;
                if (PARLogHandleForCategory_onceToken_23 != -1)
                {
                  dispatch_once(&PARLogHandleForCategory_onceToken_23, &__block_literal_global_24);
                }

                v26 = PARLogHandleForCategory_logHandles_4_25;
                if (os_log_type_enabled(PARLogHandleForCategory_logHandles_4_25, OS_LOG_TYPE_DEBUG))
                {
                  LODWORD(buf) = 138412290;
                  *(&buf + 4) = pattern_template_directory;
                  _os_log_debug_impl(&dword_1B1064000, v26, OS_LOG_TYPE_DEBUG, "Processing response wrapper section with template path %@.", &buf, 0xCu);
                }

                pattern_parameters = [ptr pattern_parameters];
                if (pattern_parameters)
                {
                  v61 = 0;
                  v27 = [MEMORY[0x1E696ACB0] JSONObjectWithData:pattern_parameters options:0 error:&v61];
                  v28 = v61;
                  if (!v28 && v27)
                  {
                    v50 = v27;
                    goto LABEL_45;
                  }

                  if (PARLogHandleForCategory_onceToken_23 != -1)
                  {
                    dispatch_once(&PARLogHandleForCategory_onceToken_23, &__block_literal_global_24);
                  }

                  v43 = PARLogHandleForCategory_logHandles_4_25;
                  if (os_log_type_enabled(PARLogHandleForCategory_logHandles_4_25, OS_LOG_TYPE_ERROR))
                  {
                    v45 = v43;
                    localizedDescription = [v28 localizedDescription];
                    LODWORD(buf) = 138412290;
                    *(&buf + 4) = localizedDescription;
                    _os_log_error_impl(&dword_1B1064000, v45, OS_LOG_TYPE_ERROR, "Error decoding JSON params: %@", &buf, 0xCu);
                  }

                  v50 = MEMORY[0x1E695E0F8];
                }

                else
                {
                  v50 = MEMORY[0x1E695E0F8];
LABEL_45:
                  v30 = dispatch_group_create();
                  dispatch_group_enter(v30);
                  if (PARLogHandleForCategory_onceToken_23 != -1)
                  {
                    dispatch_once(&PARLogHandleForCategory_onceToken_23, &__block_literal_global_24);
                  }

                  v31 = os_signpost_id_make_with_pointer(PARLogHandleForCategory_logHandles_4_25, ptr);
                  if (PARLogHandleForCategory_onceToken_23 != -1)
                  {
                    dispatch_once(&PARLogHandleForCategory_onceToken_23, &__block_literal_global_24);
                  }

                  v32 = PARLogHandleForCategory_logHandles_4_25;
                  v33 = v32;
                  if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
                  {
                    LOWORD(buf) = 0;
                    _os_signpost_emit_with_name_impl(&dword_1B1064000, v33, OS_SIGNPOST_INTERVAL_BEGIN, v31, "execute", "", &buf, 2u);
                  }

                  aBlock[0] = MEMORY[0x1E69E9820];
                  aBlock[1] = 3221225472;
                  aBlock[2] = __82__SFSearchResult_VisualCat__processVisualCATResultSynchronouslyUsingPatternClass___block_invoke;
                  aBlock[3] = &unk_1E7AC5E78;
                  v60 = v31;
                  v28 = v30;
                  v58 = v28;
                  v59 = v55;
                  v34 = _Block_copy(aBlock);
                  pattern_id = [ptr pattern_id];
                  v36 = pattern_id;
                  if (pattern_id)
                  {
                    v37 = pattern_id;
                  }

                  else
                  {
                    v37 = &stru_1F277AB70;
                  }

                  v70 = @"locale";
                  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
                  languageCode = [currentLocale languageCode];
                  v71 = languageCode;
                  v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
                  [a3 execute:0 templateDir:v51 patternId:v37 parameters:v50 globals:v40 options:0 completion:v34];

                  v41 = dispatch_time(0, 1000000000);
                  if (dispatch_group_wait(v28, v41))
                  {
                    if (PARLogHandleForCategory_onceToken_23 != -1)
                    {
                      dispatch_once(&PARLogHandleForCategory_onceToken_23, &__block_literal_global_24);
                    }

                    v42 = PARLogHandleForCategory_logHandles_4_25;
                    if (os_log_type_enabled(PARLogHandleForCategory_logHandles_4_25, OS_LOG_TYPE_ERROR))
                    {
                      LOWORD(buf) = 0;
                      _os_log_error_impl(&dword_1B1064000, v42, OS_LOG_TYPE_ERROR, "Timed out waiting for VisualCAT rendering to complete.", &buf, 2u);
                    }
                  }

                  v27 = v58;
                }
              }

              else
              {
                if (PARLogHandleForCategory_onceToken_23 != -1)
                {
                  dispatch_once(&PARLogHandleForCategory_onceToken_23, &__block_literal_global_24);
                }

                v29 = PARLogHandleForCategory_logHandles_4_25;
                if (os_log_type_enabled(PARLogHandleForCategory_logHandles_4_25, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(buf) = 0;
                  _os_log_error_impl(&dword_1B1064000, v29, OS_LOG_TYPE_ERROR, "Unable to locate template path.", &buf, 2u);
                }
              }

              v22 = pattern_template_directory;
            }

            else
            {
              if (PARLogHandleForCategory_onceToken_23 != -1)
              {
                dispatch_once(&PARLogHandleForCategory_onceToken_23, &__block_literal_global_24);
              }

              v44 = PARLogHandleForCategory_logHandles_4_25;
              if (os_log_type_enabled(PARLogHandleForCategory_logHandles_4_25, OS_LOG_TYPE_ERROR))
              {
                LOWORD(buf) = 0;
                _os_log_error_impl(&dword_1B1064000, v44, OS_LOG_TYPE_ERROR, "Couldn't find path to fallback template.", &buf, 2u);
              }
            }
          }

          ++v17;
        }

        while (v54 != v17);
        v47 = [obj countByEnumeratingWithState:&v62 objects:v72 count:16];
        v54 = v47;
      }

      while (v47);
    }
  }

  else
  {
    if (PARLogHandleForCategory_onceToken_23 != -1)
    {
      dispatch_once(&PARLogHandleForCategory_onceToken_23, &__block_literal_global_24);
    }

    v6 = PARLogHandleForCategory_logHandles_4_25;
    if (os_log_type_enabled(PARLogHandleForCategory_logHandles_4_25, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_1B1064000, v6, OS_LOG_TYPE_ERROR, "Failed to dynamically load the DialogEngine framework.", &buf, 2u);
    }
  }
}

- (void)processVisualCATResultSynchronously
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2050000000;
    v3 = getCATPatternClass_softClass;
    v9 = getCATPatternClass_softClass;
    if (!getCATPatternClass_softClass)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __getCATPatternClass_block_invoke;
      v5[3] = &unk_1E7AC5EA0;
      v5[4] = &v6;
      __getCATPatternClass_block_invoke(v5);
      v3 = v7[3];
    }

    v4 = v3;
    _Block_object_dispose(&v6, 8);
    return [self processVisualCATResultSynchronouslyUsingPatternClass:v3];
  }

  return result;
}

@end