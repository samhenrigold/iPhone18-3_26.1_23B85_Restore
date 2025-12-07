@interface _SVXAddViewsExpressionParser
- (_SVXAddViewsExpressionParser)initWithParsingService:(id)service preferences:(id)preferences;
- (id)_parseViews:(id)views addViews:(id)addViews aceViewByAceId:(id)id aceIdByParseableExpressionIds:(id)ids;
- (id)_prepareParsingModelWithAddViews:(id)views;
- (void)parseAddViews:(id)views reply:(id)reply;
@end

@implementation _SVXAddViewsExpressionParser

- (id)_parseViews:(id)views addViews:(id)addViews aceViewByAceId:(id)id aceIdByParseableExpressionIds:(id)ids
{
  v56 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  addViewsCopy = addViews;
  idCopy = id;
  idsCopy = ids;
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v46 = "[_SVXAddViewsExpressionParser _parseViews:addViews:aceViewByAceId:aceIdByParseableExpressionIds:]";
    v47 = 2112;
    v48 = addViewsCopy;
    v49 = 2112;
    v50 = viewsCopy;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s Successfully parsed expressions for command: %@\n    Parsed expressions: %@", buf, 0x20u);
  }

  v33 = addViewsCopy;
  v32 = [addViewsCopy copy];
  views = [v32 views];
  v13 = [views mutableCopy];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = viewsCopy;
  v38 = [obj countByEnumeratingWithState:&v41 objects:v55 count:16];
  if (v38)
  {
    v35 = *v42;
    do
    {
      v14 = 0;
      v15 = MEMORY[0x277CEF098];
      do
      {
        if (*v42 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v41 + 1) + 8 * v14);
        parseableExpression = [v16 parseableExpression];
        aceId = [parseableExpression aceId];
        v19 = [idsCopy objectForKey:aceId];
        v20 = [idCopy objectForKey:v19];

        v21 = [v20 copy];
        v22 = *v15;
        if (os_log_type_enabled(*v15, OS_LOG_TYPE_INFO))
        {
          v23 = v22;
          v24 = [v16 description];
          v25 = [v21 description];
          *buf = 136316162;
          v46 = "[_SVXAddViewsExpressionParser _parseViews:addViews:aceViewByAceId:aceIdByParseableExpressionIds:]";
          v47 = 2112;
          v48 = v16;
          v49 = 2112;
          v50 = v21;
          v51 = 2112;
          v52 = v24;
          v53 = 2112;
          v54 = v25;
          _os_log_impl(&dword_2695B9000, v23, OS_LOG_TYPE_INFO, "%s Applying parsed expression %@ to view %@\n    Parsed expression: %@\n    View: %@", buf, 0x34u);

          v15 = MEMORY[0x277CEF098];
        }

        [v21 svx_applyParsedExpression:v16];
        v26 = *v15;
        if (os_log_type_enabled(*v15, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v46 = "[_SVXAddViewsExpressionParser _parseViews:addViews:aceViewByAceId:aceIdByParseableExpressionIds:]";
          v47 = 2112;
          v48 = views;
          v49 = 2112;
          v50 = v13;
          _os_log_impl(&dword_2695B9000, v26, OS_LOG_TYPE_INFO, "%s Splicing in applied parsed expression\n    Original views: %@\n    Updated views: %@", buf, 0x20u);
        }

        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __98___SVXAddViewsExpressionParser__parseViews_addViews_aceViewByAceId_aceIdByParseableExpressionIds___block_invoke;
        v39[3] = &unk_279C67478;
        v27 = v20;
        v40 = v27;
        v28 = [views indexOfObjectPassingTest:v39];
        if (v28 >= [v13 count])
        {
          v29 = *v15;
          if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v46 = "[_SVXAddViewsExpressionParser _parseViews:addViews:aceViewByAceId:aceIdByParseableExpressionIds:]";
            v47 = 2112;
            v48 = v21;
            v49 = 2112;
            v50 = v27;
            v51 = 2112;
            v52 = v13;
            _os_log_error_impl(&dword_2695B9000, v29, OS_LOG_TYPE_ERROR, "%s Failed splicing updated view for view in array\n    Updated ace view: %@\n    Original ace view: %@\n    Updated views array: %@", buf, 0x2Au);
          }
        }

        else
        {
          [v13 replaceObjectAtIndex:v28 withObject:v21];
        }

        ++v14;
      }

      while (v38 != v14);
      v38 = [obj countByEnumeratingWithState:&v41 objects:v55 count:16];
    }

    while (v38);
  }

  v30 = [v13 copy];
  [v32 setViews:v30];

  return v32;
}

- (id)_prepareParsingModelWithAddViews:(id)views
{
  v56 = *MEMORY[0x277D85DE8];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  viewsCopy = views;
  views = [viewsCopy views];
  v45 = [views countByEnumeratingWithState:&v47 objects:v55 count:16];
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (!v45)
  {
    v42 = 0;
    goto LABEL_25;
  }

  v42 = 0;
  v8 = *v48;
  v9 = *MEMORY[0x277CEF568];
  v44 = *MEMORY[0x277CEF568];
  v37 = views;
  selfCopy = self;
  v39 = *v48;
  do
  {
    for (i = 0; i != v45; ++i)
    {
      if (*v48 != v8)
      {
        objc_enumerationMutation(views);
      }

      v11 = *(*(&v47 + 1) + 8 * i);
      svx_parseableExpression = [v11 svx_parseableExpression];
      v13 = svx_parseableExpression;
      if (svx_parseableExpression)
      {
        if (self->_ignoresLocallyParseableExpressions)
        {
          v43 = v7;
          expressionString = [svx_parseableExpression expressionString];
          if (![expressionString length])
          {
            goto LABEL_13;
          }

          v40 = v6;
          v41 = v5;
          v15 = v42;
          if (!v42)
          {
            speakableUtteranceParserProvider = selfCopy->_speakableUtteranceParserProvider;
            v17 = objc_alloc(MEMORY[0x277CBEAF8]);
            preferences = [(_SVXExpressionParser *)selfCopy preferences];
            languageCode = [preferences languageCode];
            v20 = [v17 initWithLocaleIdentifier:languageCode];
            v21 = [(SVXAFSpeakableUtteranceParserProvider *)speakableUtteranceParserProvider getWithLocale:v20];

            v9 = v44;
            v15 = v21;
          }

          groupIdentifier = [v11 groupIdentifier];
          v23 = [_SVXSpeakableNamespaceDomainOccurrenceProvider providerForDomain:groupIdentifier];
          [v15 registerProvider:v23 forNamespace:v9];
          [v13 expressionString];
          v25 = v24 = v9;
          v46 = 0;
          v26 = [v15 parseStringWithFormat:v25 error:&v46];
          v27 = v46;

          v42 = v15;
          if (v27)
          {
            [v15 registerProvider:0 forNamespace:v24];

            views = v37;
            self = selfCopy;
            v6 = v40;
            v5 = v41;
LABEL_13:

            v7 = v43;
            v8 = v39;
LABEL_14:
            v28 = *MEMORY[0x277CEF098];
            if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v52 = "[_SVXAddViewsExpressionParser _prepareParsingModelWithAddViews:]";
              v53 = 2112;
              v54 = v13;
              _os_log_impl(&dword_2695B9000, v28, OS_LOG_TYPE_INFO, "%s Expression doesn't require remote parse: %@", buf, 0x16u);
            }

LABEL_20:
            v9 = v44;
            goto LABEL_21;
          }

          v29 = [v23 count];
          [v15 registerProvider:0 forNamespace:v24];

          views = v37;
          self = selfCopy;
          v6 = v40;
          v5 = v41;
          v7 = v43;
          v8 = v39;
          if (!v29)
          {
            goto LABEL_14;
          }
        }

        if (!v7)
        {
          v7 = objc_opt_new();
          v30 = objc_opt_new();

          v31 = objc_opt_new();
          v5 = v31;
          v6 = v30;
        }

        aceId = [v11 aceId];
        [v5 setObject:v11 forKey:aceId];
        aceId2 = [v13 aceId];
        [v6 setObject:aceId forKey:aceId2];

        [v7 addObject:v13];
        goto LABEL_20;
      }

LABEL_21:
    }

    v45 = [views countByEnumeratingWithState:&v47 objects:v55 count:16];
  }

  while (v45);
LABEL_25:

  v34 = [[_SVXExpressionParsingModel alloc] initWithParseableExpressions:v7 aceViewIdByExpressionId:v6 aceViewByAceId:v5];

  return v34;
}

- (void)parseAddViews:(id)views reply:(id)reply
{
  v25 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  replyCopy = reply;
  if (replyCopy)
  {
    v8 = MEMORY[0x277CEF098];
    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "[_SVXAddViewsExpressionParser parseAddViews:reply:]";
      v23 = 2112;
      v24 = viewsCopy;
      _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s Looking for parseable expressions in command %@", buf, 0x16u);
    }

    v10 = [(_SVXAddViewsExpressionParser *)self _prepareParsingModelWithAddViews:viewsCopy];
    parseableExpressions = [v10 parseableExpressions];
    v12 = [parseableExpressions count];

    if (v12)
    {
      parsingService = [(_SVXExpressionParser *)self parsingService];
      parseableExpressions2 = [v10 parseableExpressions];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __52___SVXAddViewsExpressionParser_parseAddViews_reply___block_invoke;
      v17[3] = &unk_279C67450;
      v17[4] = self;
      v18 = viewsCopy;
      v19 = v10;
      v20 = replyCopy;
      [parsingService parseExpressions:parseableExpressions2 targetDevice:0 reply:v17];
    }

    else
    {
      v15 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v22 = "[_SVXAddViewsExpressionParser parseAddViews:reply:]";
        v23 = 2112;
        v24 = viewsCopy;
        _os_log_impl(&dword_2695B9000, v15, OS_LOG_TYPE_INFO, "%s Found no parseable expressions in command %@", buf, 0x16u);
      }

      v16 = [viewsCopy copy];
      (*(replyCopy + 2))(replyCopy, 1, v16);
    }
  }
}

- (_SVXAddViewsExpressionParser)initWithParsingService:(id)service preferences:(id)preferences
{
  v9.receiver = self;
  v9.super_class = _SVXAddViewsExpressionParser;
  v4 = [(_SVXExpressionParser *)&v9 initWithParsingService:service preferences:preferences];
  v5 = v4;
  if (v4)
  {
    v4->_ignoresLocallyParseableExpressions = 1;
    v6 = objc_alloc_init(SVXAFSpeakableUtteranceParserProvider);
    speakableUtteranceParserProvider = v5->_speakableUtteranceParserProvider;
    v5->_speakableUtteranceParserProvider = v6;
  }

  return v5;
}

@end