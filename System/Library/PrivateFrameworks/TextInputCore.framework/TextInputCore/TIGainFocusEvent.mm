@interface TIGainFocusEvent
- (NSArray)originalWordEntries;
- (TIGainFocusEvent)initWithTIKeyboardState:(id)state andLocale:(id)locale;
- (id)originalDocumentText;
- (id)originalWords;
@end

@implementation TIGainFocusEvent

- (id)originalWords
{
  v20 = *MEMORY[0x277D85DE8];
  originalWords = self->_originalWords;
  if (!originalWords)
  {
    array = [MEMORY[0x277CBEB18] array];
    originalDocumentText = [(TIGainFocusEvent *)self originalDocumentText];
    if (![originalDocumentText length])
    {
LABEL_15:
      v10 = [array copy];
      v11 = self->_originalWords;
      self->_originalWords = v10;

      originalWords = self->_originalWords;
      goto LABEL_16;
    }

    v6 = 4 * [originalDocumentText length];
    v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
    v17 = 0;
    v16 = xmmword_22CC889D0;
    if ([originalDocumentText getBytes:v7 maxLength:v6 usedLength:&v17 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(originalDocumentText, "length"), &v16}])
    {
      if (v16 != 0x7FFFFFFFFFFFFFFFLL && IXACanLogMessageAtLevel())
      {
        v8 = IXASessionDetailsLogFacility();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s The range (%lu, %lu) was left over when getting the bytes from the original document text '%@'", "-[TIGainFocusEvent originalWords]", v16, originalDocumentText];
          *buf = 138412290;
          v19 = v14;
          _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }

      LMStreamTokenizerCreate();
      v15 = array;
      LMStreamTokenizerPushBytes();
      LMStreamTokenizerRelease();
      v9 = v15;
    }

    else
    {
      if (!IXACanLogMessageAtLevel())
      {
LABEL_14:
        free(v7);
        goto LABEL_15;
      }

      v9 = IXASessionDetailsLogFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Unable to get the bytes from the original document text '%@'", "-[TIGainFocusEvent originalWords]", originalDocumentText];
        *buf = 138412290;
        v19 = v13;
        _os_log_debug_impl(&dword_22CA55000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    goto LABEL_14;
  }

LABEL_16:

  return originalWords;
}

- (id)originalDocumentText
{
  originalDocumentText = self->_originalDocumentText;
  if (!originalDocumentText)
  {
    keyboardState = [(TIUserAction *)self keyboardState];
    documentState = [keyboardState documentState];

    if (documentState)
    {
      v6 = MEMORY[0x277CCACA8];
      contextBeforeInput = [documentState contextBeforeInput];
      v8 = contextBeforeInput;
      if (contextBeforeInput)
      {
        v9 = contextBeforeInput;
      }

      else
      {
        v9 = &stru_283FDFAF8;
      }

      selectedText = [documentState selectedText];
      v11 = selectedText;
      if (selectedText)
      {
        v12 = selectedText;
      }

      else
      {
        v12 = &stru_283FDFAF8;
      }

      contextAfterInput = [documentState contextAfterInput];
      v14 = contextAfterInput;
      if (contextAfterInput)
      {
        v15 = contextAfterInput;
      }

      else
      {
        v15 = &stru_283FDFAF8;
      }

      v16 = [v6 stringWithFormat:@"%@%@%@ ", v9, v12, v15];
      v17 = self->_originalDocumentText;
      self->_originalDocumentText = v16;
    }

    else
    {
      v8 = self->_originalDocumentText;
      self->_originalDocumentText = &stru_283FDFAF8;
    }

    originalDocumentText = self->_originalDocumentText;
  }

  return originalDocumentText;
}

void __33__TIGainFocusEvent_originalWords__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((a4 - 500) <= 0xFFFFFE0C)
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a2 length:a3 encoding:4];
    [*(a1 + 32) addObject:v6];
  }
}

- (NSArray)originalWordEntries
{
  v38 = *MEMORY[0x277D85DE8];
  originalWordEntries = self->_originalWordEntries;
  if (!originalWordEntries)
  {
    array = [MEMORY[0x277CBEB18] array];
    originalDocumentText = [(TIGainFocusEvent *)self originalDocumentText];
    v5 = [originalDocumentText length];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    selfCopy = self;
    obj = [(TIGainFocusEvent *)self originalWords];
    v28 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v28)
    {
      v6 = 0;
      v27 = *v32;
      while (2)
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v32 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v31 + 1) + 8 * i);
          v9 = [originalDocumentText rangeOfString:v8 options:2 range:{v6, v5}];
          if (v9 == 0x7FFFFFFFFFFFFFFFLL)
          {
            if (IXACanLogMessageAtLevel())
            {
              v22 = IXASessionDetailsLogFacility();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s An error occurred when trying to locate '%@' within the original document text '%@'", "-[TIGainFocusEvent originalWordEntries]", v8, originalDocumentText];
                *buf = 138412290;
                v36 = v25;
                _os_log_debug_impl(&dword_22CA55000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }

            goto LABEL_15;
          }

          v11 = v9;
          v12 = v10;
          v13 = [originalDocumentText substringWithRange:{0, v9}];
          v14 = [MEMORY[0x277D6F350] documentStateWithContextBefore:v13 selectedText:0 contextAfter:0];
          v6 = v11 + v12;
          v15 = [originalDocumentText substringWithRange:{0, v11 + v12}];
          keyboardState = [(TIUserAction *)selfCopy keyboardState];
          v17 = [keyboardState copy];

          v18 = [MEMORY[0x277D6F350] documentStateWithContextBefore:v15 selectedText:0 contextAfter:0];
          [v17 setDocumentState:v18];

          v19 = [MEMORY[0x277D6F3D8] candidateWithCandidate:v8 forInput:v8];
          v20 = objc_alloc_init(TIWordEntry);
          [(TIUserAction *)v20 setDocumentState:v14];
          [(TIUserAction *)v20 setKeyboardState:v17];
          [(TIWordEntry *)v20 setAcceptedCandidate:v19];
          candidate = [v19 candidate];
          [(TIWordEntry *)v20 setAcceptedString:candidate];

          [(TIWordEntry *)v20 setOrigin:1];
          [(NSArray *)array addObject:v20];
          v5 = [originalDocumentText length] - v6;
        }

        v28 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    v23 = selfCopy->_originalWordEntries;
    selfCopy->_originalWordEntries = array;

    originalWordEntries = selfCopy->_originalWordEntries;
  }

  return originalWordEntries;
}

- (TIGainFocusEvent)initWithTIKeyboardState:(id)state andLocale:(id)locale
{
  localeCopy = locale;
  v12.receiver = self;
  v12.super_class = TIGainFocusEvent;
  v8 = [(TIContextChangeEvent *)&v12 initWithTIKeyboardState:state andActionType:10];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_locale, locale);
    originalWords = [(TIGainFocusEvent *)v9 originalWords];
  }

  return v9;
}

@end