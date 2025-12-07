@interface _MUISearchSuggestionsOperation
- (id)_runningSuggesterNames;
- (id)_startQueryForSuggester:(dispatch_queue_t *)suggester;
- (id)initWithRequestID:(void *)d phraseManager:(void *)manager suggestionsGenerator:;
- (void)_asyncCompleteSuggester:(void *)suggester;
- (void)_didCompleteAllSuggesters;
- (void)_suggester:(void *)_suggester didCompleteWithSuggestions:;
- (void)cancel;
- (void)start;
- (void)suggester:(void *)suggester producedSuggestions:;
@end

@implementation _MUISearchSuggestionsOperation

- (id)_startQueryForSuggester:(dispatch_queue_t *)suggester
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (suggester)
  {
    dispatch_assert_queue_V2(suggester[7]);
    v4 = suggester[7];
    suggesterCopy = suggester;
    v6 = v3;
    v7 = signpostLog(v6);
    v8 = os_signpost_enabled(v7);

    if (v8)
    {
      v10 = signpostLog(v9);
      v11 = os_signpost_id_generate(v10);

      phraseKind = [suggesterCopy[4] phraseKind];
      v13 = phraseKind;
      v14 = signpostLog(phraseKind);
      v15 = v14;
      if (v13)
      {
        if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
        {
          v16 = suggesterCopy[3];
          if (v16)
          {
            v17 = v16[2];
          }

          else
          {
            v17 = 0;
          }

          v18 = v16;
          logIdentifier = [v6 logIdentifier];
          LODWORD(buf) = 67109378;
          HIDWORD(buf) = v17;
          v35 = 2114;
          v36 = logIdentifier;
          _os_signpost_emit_with_name_impl(&dword_214A5E000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v11, "com.apple.mail.search.suggestion.zkw.suggester", "id=%{signpost.description:attribute}u suggester=%{signpost.description:attribute,public}@", &buf, 0x12u);
        }
      }

      else if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        v21 = suggesterCopy[3];
        if (v21)
        {
          v22 = v21[2];
        }

        else
        {
          v22 = 0;
        }

        v23 = v21;
        logIdentifier2 = [v6 logIdentifier];
        LODWORD(buf) = 67109378;
        HIDWORD(buf) = v22;
        v35 = 2114;
        v36 = logIdentifier2;
        _os_signpost_emit_with_name_impl(&dword_214A5E000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v11, "com.apple.mail.search.suggestion.ayt.suggester", "id=%{signpost.description:attribute}u suggester=%{signpost.description:attribute,public}@", &buf, 0x12u);
      }

      phraseKind2 = [suggesterCopy[4] phraseKind];
    }

    else
    {
      phraseKind2 = 0;
      v11 = 0;
    }

    objc_initWeak(&buf, suggesterCopy);
    v25 = suggesterCopy[4];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __58___MUISearchSuggestionsOperation__startQueryForSuggester___block_invoke;
    v31[3] = &unk_27818B1B0;
    v33[1] = phraseKind2;
    v33[2] = v11;
    v31[4] = v4;
    objc_copyWeak(v33, &buf);
    v26 = v6;
    v32 = v26;
    v27 = [v26 generateSuggestionsUsingPhraseManager:v25 handler:v31];

    v28 = suggesterCopy[6];
    v29 = [MEMORY[0x277D07190] pairWithFirst:v26 second:v27];
    [v28 addObject:v29];

    objc_destroyWeak(v33);
    objc_destroyWeak(&buf);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)initWithRequestID:(void *)d phraseManager:(void *)manager suggestionsGenerator:
{
  v8 = a2;
  dCopy = d;
  managerCopy = manager;
  if (self)
  {
    v20.receiver = self;
    v20.super_class = _MUISearchSuggestionsOperation;
    v11 = objc_msgSendSuper2(&v20, sel_init);
    self = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 3, a2);
      objc_storeStrong(self + 4, d);
      if (managerCopy)
      {
        v12 = managerCopy[2];
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      v14 = [v13 copy];
      v15 = self[5];
      self[5] = v14;

      array = [MEMORY[0x277CBEB18] array];
      v17 = self[6];
      self[6] = array;

      objc_storeWeak(self + 2, managerCopy);
      if (managerCopy)
      {
        v18 = managerCopy[6];
      }

      else
      {
        v18 = 0;
      }

      objc_storeStrong(self + 7, v18);
    }
  }

  return self;
}

- (void)start
{
  v51 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return;
  }

  dispatch_assert_queue_V2(self[7]);
  selfCopy = self;
  v3 = signpostLog(selfCopy);
  v4 = os_signpost_enabled(v3);

  if (v4)
  {
    phraseKind = [selfCopy[4] phraseKind];
    v6 = phraseKind;
    v7 = signpostLog(phraseKind);
    signpostID = [selfCopy[4] signpostID];
    OUTLINED_FUNCTION_5_0();
    if (v6)
    {
      if (!v10 & v9 || !os_signpost_enabled(v7))
      {
        goto LABEL_11;
      }

      v11 = selfCopy[3];
      v12 = selfCopy[4];
      v13 = v11;
      phrase = [v12 phrase];
      OUTLINED_FUNCTION_3_2();
      v15 = "com.apple.mail.search.suggestion.zkw.run";
    }

    else
    {
      if (!v10 & v9 || !os_signpost_enabled(v7))
      {
        goto LABEL_11;
      }

      v16 = selfCopy[3];
      v12 = selfCopy[4];
      v13 = v16;
      phrase = [v12 phrase];
      OUTLINED_FUNCTION_3_2();
      v15 = "com.apple.mail.search.suggestion.ayt.run";
    }

    _os_signpost_emit_with_name_impl(&dword_214A5E000, v7, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, v15, "id=%{signpost.description:attribute}u text=%{sensitive}@", buf, 0x12u);

LABEL_11:
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v17 = selfCopy[5];
  v18 = [v17 countByEnumeratingWithState:&v44 objects:v50 count:16];
  v19 = off_278187000;
  if (v18)
  {
    v20 = v18;
    v21 = *v45;
LABEL_14:
    v22 = 0;
    while (1)
    {
      if (*v45 != v21)
      {
        objc_enumerationMutation(v17);
      }

      v23 = *(*(&v44 + 1) + 8 * v22);
      v24 = atomic_load(selfCopy + 8);
      if (v24)
      {
        break;
      }

      v25 = selfCopy[4];
      if ([v25 phraseKind])
      {
      }

      else
      {
        shouldQueryForAsYouType = [v23 shouldQueryForAsYouType];

        if ((shouldQueryForAsYouType & 1) == 0)
        {
          v27 = [(__objc2_class *)v19[34] log];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            logIdentifier = [v23 logIdentifier];
            v29 = logIdentifier;
            v30 = selfCopy[3];
            if (v30)
            {
              LODWORD(v30) = v30[1].isa;
            }

            *buf = 138543618;
            *v49 = logIdentifier;
            *&v49[8] = 1024;
            *&v49[10] = v30;
            _os_log_debug_impl(&dword_214A5E000, v27, OS_LOG_TYPE_DEBUG, "AsYouType detected. Ignoring suggester '%{public}@' for search #%u", buf, 0x12u);
          }

          goto LABEL_22;
        }
      }

      v27 = [(_MUISearchSuggestionsOperation *)selfCopy _startQueryForSuggester:v23];
      if (!v27)
      {
        v31 = [(__objc2_class *)v19[34] log];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v32 = selfCopy[3];
          if (v32)
          {
            v33 = v32[2];
          }

          else
          {
            v33 = 0;
          }

          v43 = v32;
          logIdentifier2 = [v23 logIdentifier];
          *buf = 67109378;
          *v49 = v33;
          *&v49[4] = 2114;
          *&v49[6] = logIdentifier2;
          _os_log_debug_impl(&dword_214A5E000, v31, OS_LOG_TYPE_DEBUG, "Search #%u, suggester '%{public}@' completed synchronously.", buf, 0x12u);

          v19 = off_278187000;
        }

        [(_MUISearchSuggestionsOperation *)selfCopy _asyncCompleteSuggester:v23];
      }

LABEL_22:

      if (v20 == ++v22)
      {
        v35 = [v17 countByEnumeratingWithState:&v44 objects:v50 count:16];
        v20 = v35;
        if (v35)
        {
          goto LABEL_14;
        }

        break;
      }
    }
  }

  v36 = [(__objc2_class *)v19[34] log];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    v37 = selfCopy[3];
    if (v37)
    {
      v38 = v37[2];
    }

    else
    {
      v38 = 0;
    }

    v39 = selfCopy[6];
    v40 = v37;
    v41 = [v39 count];
    _runningSuggesterNames = [(_MUISearchSuggestionsOperation *)selfCopy _runningSuggesterNames];
    *buf = 67109634;
    *v49 = v38;
    *&v49[4] = 1024;
    *&v49[6] = v41;
    *&v49[10] = 2114;
    *&v49[12] = _runningSuggesterNames;
    _os_log_debug_impl(&dword_214A5E000, v36, OS_LOG_TYPE_DEBUG, "Search #%u, %u suggester(s) ('%{public}@') running async.", buf, 0x18u);
  }
}

- (void)cancel
{
  v22 = *MEMORY[0x277D85DE8];
  if (self && (atomic_fetch_or(self + 8, 1u) & 1) == 0)
  {
    selfCopy = self;
    v2 = signpostLog(selfCopy);
    v3 = os_signpost_enabled(v2);

    if (!v3)
    {
LABEL_17:

      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_6_0();
      v17 = __40___MUISearchSuggestionsOperation_cancel__block_invoke;
      v18 = &unk_278188BB0;
      v19 = selfCopy;
      dispatch_async(v15, block);
      return;
    }

    phraseKind = [*(selfCopy + 4) phraseKind];
    v5 = phraseKind;
    v6 = signpostLog(phraseKind);
    signpostID = [*(selfCopy + 4) signpostID];
    OUTLINED_FUNCTION_5_0();
    if (v5)
    {
      if (!v9 & v8 || !os_signpost_enabled(v6))
      {
        goto LABEL_16;
      }

      v10 = *(selfCopy + 3);
      if (v10)
      {
        v11 = v10[2];
      }

      else
      {
        v11 = 0;
      }

      *buf = 67109120;
      v21 = v11;
      v12 = "com.apple.mail.search.suggestion.zkw.cancel";
    }

    else
    {
      if (!v9 & v8 || !os_signpost_enabled(v6))
      {
        goto LABEL_16;
      }

      v13 = *(selfCopy + 3);
      if (v13)
      {
        v14 = v13[2];
      }

      else
      {
        v14 = 0;
      }

      *buf = 67109120;
      v21 = v14;
      v12 = "com.apple.mail.search.suggestion.ayt.cancel";
    }

    _os_signpost_emit_with_name_impl(&dword_214A5E000, v6, OS_SIGNPOST_EVENT, signpostID, v12, "Cancelled id=%{signpost.description:attribute}u", buf, 8u);
LABEL_16:

    goto LABEL_17;
  }
}

- (void)_asyncCompleteSuggester:(void *)suggester
{
  v3 = a2;
  if (suggester)
  {
    objc_initWeak(&location, suggester);
    v4 = suggester[7];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58___MUISearchSuggestionsOperation__asyncCompleteSuggester___block_invoke;
    block[3] = &unk_27818B110;
    v5 = v4;
    objc_copyWeak(&v8, &location);
    v7 = v3;
    dispatch_async(v5, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (id)_runningSuggesterNames
{
  selfCopy = self;
  if (self)
  {
    dispatch_assert_queue_V2(self[7]);
    v2 = [selfCopy[6] ef_map:&__block_literal_global_136];
    selfCopy = [v2 componentsJoinedByString:{@", "}];
  }

  return selfCopy;
}

- (void)_suggester:(void *)_suggester didCompleteWithSuggestions:
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  _suggesterCopy = _suggester;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 56));
    if (_suggesterCopy)
    {
      [(_MUISearchSuggestionsOperation *)self suggester:v5 producedSuggestions:_suggesterCopy];
    }

    v7 = *(self + 48);
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_6_0();
    v40 = __72___MUISearchSuggestionsOperation__suggester_didCompleteWithSuggestions___block_invoke;
    v41 = &unk_27818B1F8;
    v8 = v5;
    v42 = v8;
    v9 = [v7 indexOfObjectPassingTest:v39];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (![_suggesterCopy count])
      {
LABEL_19:

        goto LABEL_20;
      }

      v10 = +[MUISearchSuggestionsGenerator log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(self + 24);
        if (v11)
        {
          v12 = v11[2];
        }

        else
        {
          v12 = 0;
        }

        v13 = v11;
        logIdentifier = [v8 logIdentifier];
        [_suggesterCopy count];
        *buf = 67109634;
        v44 = v12;
        OUTLINED_FUNCTION_8();
        v45 = logIdentifier;
        v46 = 1024;
        LODWORD(v47) = v15;
        _os_log_error_impl(&dword_214A5E000, v10, OS_LOG_TYPE_ERROR, "Search #%u suggester '%{public}@' did produce %u suggestions but it is no longer running. Ignoring.", buf, 0x18u);
      }
    }

    else
    {
      v16 = v9;
      v17 = [*(self + 48) objectAtIndexedSubscript:v9];
      second = [v17 second];

      if (second)
      {
        v19 = +[MUISearchSuggestionsGenerator log];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(self + 24);
          if (v20)
          {
            v21 = v20[2];
          }

          else
          {
            v21 = 0;
          }

          v38 = v20;
          logIdentifier2 = [v8 logIdentifier];
          *buf = 67109378;
          v44 = v21;
          OUTLINED_FUNCTION_8();
          v45 = v23;
          _os_log_impl(&dword_214A5E000, v19, OS_LOG_TYPE_DEFAULT, "Search #%u completed async suggester '%{public}@'.", buf, 0x12u);
        }
      }

      [*(self + 48) removeObjectAtIndex:v16];
      v24 = [*(self + 48) count];
      v10 = +[MUISearchSuggestionsGenerator log];
      v25 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (!v24)
      {
        if (v25)
        {
          v26 = *(self + 24);
          if (v26)
          {
            v27 = v26[2];
          }

          else
          {
            v27 = 0;
          }

          v28 = v26;
          logIdentifier3 = [v8 logIdentifier];
          *buf = 67109378;
          v44 = v27;
          OUTLINED_FUNCTION_8();
          v45 = v30;
          _os_log_impl(&dword_214A5E000, v10, OS_LOG_TYPE_DEFAULT, "Search #%u did complete suggester '%{public}@'. All suggesters done.", buf, 0x12u);
        }

        [(_MUISearchSuggestionsOperation *)self _didCompleteAllSuggesters];
        goto LABEL_19;
      }

      if (v25)
      {
        v31 = *(self + 24);
        if (v31)
        {
          v32 = v31[2];
        }

        else
        {
          v32 = 0;
        }

        v33 = v31;
        logIdentifier4 = [v8 logIdentifier];
        _runningSuggesterNames = [(_MUISearchSuggestionsOperation *)self _runningSuggesterNames];
        *buf = 67109890;
        v44 = v32;
        OUTLINED_FUNCTION_8();
        v45 = logIdentifier4;
        v46 = v36;
        v47 = v37;
        v48 = 1024;
        v49 = v24;
        _os_log_impl(&dword_214A5E000, v10, OS_LOG_TYPE_DEFAULT, "Search #%u did complete suggester '%{public}@'. '%{public}@' (%u) remaining.", buf, 0x22u);
      }
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (void)suggester:(void *)suggester producedSuggestions:
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  suggesterCopy = suggester;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 56));
    v7 = +[MUISearchSuggestionsGenerator log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(self + 24);
      if (v8)
      {
        v9 = v8[2];
      }

      else
      {
        v9 = 0;
      }

      v10 = v8;
      logIdentifier = [v5 logIdentifier];
      v19[0] = 67109634;
      v19[1] = v9;
      v20 = 2114;
      v21 = logIdentifier;
      v22 = 1024;
      v23 = [suggesterCopy count];
      _os_log_impl(&dword_214A5E000, v7, OS_LOG_TYPE_DEFAULT, "Search #%u suggester '%{public}@' produced %u suggestions.", v19, 0x18u);
    }

    v12 = [MUISearchResult alloc];
    categories = [v5 categories];
    v14 = *(self + 24);
    v15 = *(self + 32);
    v16 = v14;
    v17 = -[MUISearchResult initWithSuggestions:categories:requestID:phraseKind:](&v12->super.isa, suggesterCopy, categories, v16, [v15 phraseKind]);

    WeakRetained = objc_loadWeakRetained((self + 16));
    [(MUISearchSuggestionsGenerator *)WeakRetained _didProduceResult:v17];
  }
}

- (void)_didCompleteAllSuggesters
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 56));
    v3 = atomic_load((self + 8));
    v4 = +[MUISearchSuggestionsGenerator log];
    v5 = OUTLINED_FUNCTION_10(v4);
    if (v3)
    {
      if (v5)
      {
        goto LABEL_6;
      }
    }

    else if (v5)
    {
LABEL_6:
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_2_3();
      _os_log_impl(v6, v7, v8, v9, v10, 8u);
    }

    signpostEndRunInterval(self, v3 & 1);
    WeakRetained = objc_loadWeakRetained((self + 16));
    [(MUISearchSuggestionsGenerator *)WeakRetained _operationDidComplete:self];
  }
}

@end