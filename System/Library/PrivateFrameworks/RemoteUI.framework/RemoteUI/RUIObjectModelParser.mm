@interface RUIObjectModelParser
- (BOOL)parseActionSignalWithElementName:(id)name;
- (RUIObjectModelParser)initWithBaseURL:(id)l style:(id)style delegate:(id)delegate decodingUserInfo:(id)info;
- (RUIObjectModelParserDelegate)delegate;
- (id)_createAndAddPageWithAttributes:(id)attributes;
- (id)_createPageWithName:(id)name attributes:(id)attributes;
- (id)_lastPageCreateIfNeeded;
- (id)_lastRow;
- (void)_addNavigationBarWithAttributes:(id)attributes;
- (void)_logDeprecation:(id)deprecation value:(id)value;
- (void)_validateDocumentContent;
- (void)dealloc;
- (void)parseXMLElement:(id)element;
- (void)parser:(id)parser setDefaultActionSignal:(id)signal;
- (void)traversalDelegateDidEndlement:(id)endlement;
- (void)traversalDelegateDidStartElement:(id)element;
- (void)traversalDelegateFoundCData:(id)data;
@end

@implementation RUIObjectModelParser

- (RUIObjectModelParser)initWithBaseURL:(id)l style:(id)style delegate:(id)delegate decodingUserInfo:(id)info
{
  lCopy = l;
  styleCopy = style;
  delegateCopy = delegate;
  infoCopy = info;
  v26.receiver = self;
  v26.super_class = RUIObjectModelParser;
  v14 = [(RUIObjectModelParser *)&v26 init];
  if (v14)
  {
    v15 = objc_alloc_init(RUIObjectModel);
    uiObjectModel = v14->_uiObjectModel;
    v14->_uiObjectModel = v15;

    [(RUIObjectModel *)v14->_uiObjectModel setDecodingUserInfo:infoCopy];
    [(RUIObjectModel *)v14->_uiObjectModel setSourceURL:lCopy];
    [(RUIObjectModel *)v14->_uiObjectModel setStyle:styleCopy];
    [(RUIObjectModelParser *)v14 setBaseURL:lCopy];
    [(RUIObjectModelParser *)v14 setDelegate:delegateCopy];
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pages = v14->_pages;
    v14->_pages = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    currentPageStack = v14->_currentPageStack;
    v14->_currentPageStack = v19;

    v21 = objc_opt_new();
    accumulator = v14->_accumulator;
    v14->_accumulator = v21;

    v23 = objc_opt_new();
    elementStack = v14->_elementStack;
    v14->_elementStack = v23;
  }

  return v14;
}

- (void)parseXMLElement:(id)element
{
  [(RUIObjectModelParser *)self setXmlElement:element];
  xmlElement = [(RUIObjectModelParser *)self xmlElement];
  [xmlElement traverseWithDelegate:self];

  [(RUIObjectModelParser *)self _validateDocumentContent];
  uiObjectModel = self->_uiObjectModel;

  [(RUIObjectModel *)uiObjectModel parseDidFinish];
}

- (void)dealloc
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = self->_pages;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v18 + 1) + 8 * v7++) setObjectModel:0];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_currentPageStack;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12++) setObjectModel:0];
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v10);
  }

  v13.receiver = self;
  v13.super_class = RUIObjectModelParser;
  [(RUIObjectModelParser *)&v13 dealloc];
}

- (id)_createPageWithName:(id)name attributes:(id)attributes
{
  nameCopy = name;
  attributesCopy = attributes;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if ((v9 & 1) == 0 || (v10 = objc_loadWeakRetained(&self->_delegate), [v10 objectModelParser:self createPageWithName:nameCopy attributes:attributesCopy], v11 = objc_claimAutoreleasedReturnValue(), v10, -[RUIPage setAttributes:](v11, "setAttributes:", attributesCopy), !v11))
  {
    v11 = [[RUIPage alloc] initWithAttributes:attributesCopy];
  }

  v12 = [(RUIElement *)[RUIPageElement alloc] initWithAttributes:attributesCopy parent:0];
  [(RUIPage *)v11 setPageElement:v12];
  style = [(RUIObjectModel *)self->_uiObjectModel style];
  [(RUIPage *)v11 setStyle:style];

  [(RUIPage *)v11 setObjectModel:self->_uiObjectModel];
  [(NSMutableArray *)self->_currentPageStack addObject:v11];

  return v11;
}

- (id)_createAndAddPageWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = [attributesCopy objectForKeyedSubscript:@"name"];
  v6 = [(RUIObjectModelParser *)self _createPageWithName:v5 attributes:attributesCopy];

  if (attributesCopy)
  {
    v7 = [attributesCopy objectForKeyedSubscript:@"validationFunction"];
    [v6 setValidationFunction:v7];

    v8 = [attributesCopy objectForKeyedSubscript:@"id"];
    [v6 setPageID:v8];

    v9 = [attributesCopy objectForKeyedSubscript:@"backgroundColor"];
    if (v9)
    {
      v10 = [MEMORY[0x277D75348] _remoteUI_colorWithString:v9];
      view = [v6 view];
      [view setBackgroundColor:v10];
    }
  }

  [(NSMutableArray *)self->_pages addObject:v6];

  return v6;
}

- (id)_lastPageCreateIfNeeded
{
  lastObject = [(NSMutableArray *)self->_currentPageStack lastObject];
  if (!lastObject)
  {
    lastObject = [(RUIObjectModelParser *)self _createAndAddPageWithAttributes:0];
  }

  return lastObject;
}

- (id)_lastRow
{
  lastObject = [(NSMutableArray *)self->_currentPageStack lastObject];
  tableViewOM = [lastObject tableViewOM];
  sections = [tableViewOM sections];
  lastObject2 = [sections lastObject];

  rows = [lastObject2 rows];
  lastObject3 = [rows lastObject];

  return lastObject3;
}

- (void)_addNavigationBarWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  _lastPageCreateIfNeeded = [(RUIObjectModelParser *)self _lastPageCreateIfNeeded];
  v5 = [attributesCopy objectForKey:@"title"];
  if ([v5 length])
  {
    [_lastPageCreateIfNeeded setNavTitle:v5];
  }

  v6 = [attributesCopy objectForKey:@"subTitle"];
  if ([v6 length])
  {
    [_lastPageCreateIfNeeded setNavSubTitle:v6];
  }

  v7 = [attributesCopy objectForKey:@"backButtonTitle"];
  if (v7)
  {
    [_lastPageCreateIfNeeded setBackButtonTitle:v7];
  }

  v8 = [attributesCopy objectForKey:@"hidesBackButton"];
  [_lastPageCreateIfNeeded setHidesBackButton:{objc_msgSend(v8, "BOOLValue")}];
}

- (void)_logDeprecation:(id)deprecation value:(id)value
{
  v23 = *MEMORY[0x277D85DE8];
  deprecationCopy = deprecation;
  valueCopy = value;
  v9 = valueCopy;
  if (valueCopy)
  {
    valueCopy = [MEMORY[0x277CCACA8] stringWithFormat:@" = %@", valueCopy];
    v10 = valueCopy;
  }

  else
  {
    v10 = &stru_282D68F58;
  }

  isInternalInstall = _isInternalInstall(valueCopy, v8);
  if (isInternalInstall)
  {
    v12 = _RUILoggingFacility(isInternalInstall);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      baseURL = [(RUIObjectModelParser *)self baseURL];
      lastObject = [(NSMutableArray *)self->_elementStack lastObject];
      *buf = 138413058;
      v16 = baseURL;
      v17 = 2112;
      v18 = deprecationCopy;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = lastObject;
      _os_log_impl(&dword_21B93D000, v12, OS_LOG_TYPE_DEFAULT, "Page with baseURL %@ is using deprecated feature %@%@ in %@ element", buf, 0x2Au);
    }
  }
}

- (BOOL)parseActionSignalWithElementName:(id)name
{
  nameCopy = name;
  v5 = [RUIActionSignal signalWithString:nameCopy];
  if (v5)
  {
    actionSignal = self->_actionSignal;
    if (actionSignal)
    {
      subActions = [(RUIActionSignal *)actionSignal subActions];
      [subActions addObject:nameCopy];
    }

    else
    {
      v8 = v5;
      subActions = self->_actionSignal;
      self->_actionSignal = v8;
    }
  }

  return v5 != 0;
}

- (void)traversalDelegateDidStartElement:(id)element
{
  elementCopy = element;
  [(NSMutableString *)self->_accumulator setString:&stru_282D68F58];
  attributtes = [elementCopy attributtes];
  name = [elementCopy name];
  objc_storeStrong(&self->_currentElementAttributes, attributtes);
  v7 = [name isEqualToString:@"buddyFlowComplete"];
  if (v7)
  {
    isInternalInstall = _isInternalInstall(v7, v8);
    if (isInternalInstall)
    {
      v10 = _RUILoggingFacility(isInternalInstall);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B93D000, v10, OS_LOG_TYPE_DEFAULT, "Buddy Flow Complete!", buf, 2u);
      }
    }

    v11 = [RUIActionSignal signalWithType:1];
    actionSignal = self->_actionSignal;
    self->_actionSignal = v11;

    *&self->_foundXMLUI = 257;
  }

  else
  {
    if (![name isEqualToString:@"xmlui"])
    {
      v20 = [name isEqualToString:@"actions"];
      if (v20)
      {
        v22 = _isInternalInstall(v20, v21);
        if (!v22)
        {
          goto LABEL_55;
        }

        v23 = _RUILoggingFacility(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *v58 = 0;
          _os_log_impl(&dword_21B93D000, v23, OS_LOG_TYPE_DEFAULT, "Starting to parse actions", v58, 2u);
        }
      }

      else
      {
        if ([name isEqualToString:@"script"])
        {
          v24 = MEMORY[0x277CBEBC0];
          v25 = [attributtes objectForKey:@"src"];
          v26 = [v24 URLWithString:v25];
          [(RUIObjectModel *)self->_uiObjectModel setScriptURL:v26];

          self->_parserState = 1;
          goto LABEL_55;
        }

        if ([name isEqualToString:@"page"])
        {
          v23 = [(RUIObjectModelParser *)self _createAndAddPageWithAttributes:attributtes];
          v38 = [RUITopLevelElementParser alloc];
          elementProvider = [v23 elementProvider];
          v40 = [(RUITopLevelElementParser *)v38 initWithXMLElement:elementCopy elementProvider:elementProvider objectModel:self->_uiObjectModel delegate:self];

          pageElement = [v23 pageElement];
          [pageElement setSourceXMLElement:elementCopy];

          [(RUITopLevelElementParser *)v40 parse];
        }

        else
        {
          if (![name isEqualToString:@"alert"])
          {
            if ([name isEqualToString:@"clientInfo"])
            {
              [(RUIObjectModel *)self->_uiObjectModel setClientInfo:attributtes];
            }

            else if ([name isEqualToString:@"serverInfo"])
            {
              [(RUIObjectModel *)self->_uiObjectModel setServerInfo:attributtes];
            }

            else if ([name isEqualToString:@"updateInfo"])
            {
              [(RUIObjectModel *)self->_uiObjectModel setUpdateInfo:attributtes];
            }

            else
            {
              [(RUIObjectModelParser *)self parseActionSignalWithElementName:name];
            }

            goto LABEL_55;
          }

          self->_parserState = 2;
          v42 = [[RUIAlertView alloc] initWithAttributes:attributtes parent:0];
          style = [(RUIObjectModel *)self->_uiObjectModel style];
          [(RUIElement *)v42 setStyle:style];

          v44 = [attributtes objectForKey:@"title"];
          [(RUIAlertView *)v42 setTitle:v44];

          v45 = [attributtes objectForKey:@"message"];
          [(RUIAlertView *)v42 setMessage:v45];

          v46 = [attributtes objectForKey:@"cancelButtonTitle"];

          if (v46)
          {
            v47 = [attributtes objectForKeyedSubscript:@"cancelButtonTitle"];
            [(RUIAlertView *)v42 addButtonWithTitle:v47 URL:0 style:1 attributes:0];
          }

          currentAlert = self->_currentAlert;
          self->_currentAlert = v42;
          v23 = v42;

          [v23 setSourceXMLElement:elementCopy];
        }
      }

      goto LABEL_55;
    }

    if (!self->_error && ![(NSMutableArray *)self->_elementStack count])
    {
      *&self->_foundXMLUI = 257;
    }

    v13 = [attributtes objectForKey:@"action"];
    uiObjectModel = self->_uiObjectModel;
    v15 = [attributtes objectForKey:@"id"];
    [(RUIObjectModel *)uiObjectModel setIdentifier:v15];

    v16 = self->_uiObjectModel;
    v17 = [attributtes objectForKey:@"idOfOldestObjectModelToRemoveAfterPush"];
    [(RUIObjectModel *)v16 setIdentifierMarkingStackRemovalAfterPush:v17];

    v18 = [attributtes objectForKeyedSubscript:@"idOfObjectModelToReplace"];
    [(RUIObjectModel *)self->_uiObjectModel setIdOfObjectModelToReplace:v18];

    v19 = [RUIActionSignal signalWithString:v13];
    if (v19)
    {
      objc_storeStrong(&self->_actionSignal, v19);
    }

    else
    {
      v27 = [v13 length];
      if (v27)
      {
        v28 = _RUILoggingFacility(v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [(RUIObjectModelParser *)v13 traversalDelegateDidStartElement:v28];
        }
      }
    }

    v29 = [attributtes objectForKey:@"validationFunction"];
    [(RUIObjectModel *)self->_uiObjectModel setValidationFunction:v29];

    v30 = [attributtes objectForKey:@"refresh"];
    v31 = [v30 componentsSeparatedByString:@""];;
    if ([v31 count] == 2)
    {
      v32 = [v31 objectAtIndex:0];
      -[RUIObjectModel setRefreshDelay:](self->_uiObjectModel, "setRefreshDelay:", [v32 intValue]);

      v33 = [v31 objectAtIndex:1];
      [(RUIObjectModel *)self->_uiObjectModel setRefreshURL:v33];
    }

    style2 = [(RUIObjectModel *)self->_uiObjectModel style];

    if (!style2)
    {
      v35 = [attributtes objectForKey:@"style"];
      v57 = v13;
      if ([v35 isEqualToString:@"setupAssistant"])
      {
        v36 = self->_uiObjectModel;
        defaultStyle = +[RUIStyle setupAssistantStyle];
      }

      else if ([v35 isEqualToString:@"setupAssistantModal"])
      {
        v36 = self->_uiObjectModel;
        defaultStyle = +[RUIStyle setupAssistantModalStyle];
      }

      else if ([v35 isEqualToString:@"oslo"])
      {
        v36 = self->_uiObjectModel;
        defaultStyle = +[RUIStyle osloStyle];
      }

      else if ([v35 isEqualToString:@"atv"])
      {
        v36 = self->_uiObjectModel;
        defaultStyle = +[RUIStyle frontRowStyle];
      }

      else
      {
        v49 = [v35 isEqualToString:@"defaultStyle"];
        v36 = self->_uiObjectModel;
        if (v49)
        {
          v50 = RUIDefaultAppearanceStyle;
        }

        else
        {
          v50 = RUIStyle;
        }

        defaultStyle = [(__objc2_class *)v50 defaultStyle];
      }

      v51 = defaultStyle;
      [(RUIObjectModel *)v36 setStyle:defaultStyle];

      v13 = v57;
    }

    v52 = [attributtes objectForKeyedSubscript:@"tintColor"];

    if (v52)
    {
      v53 = MEMORY[0x277D75348];
      v54 = [attributtes objectForKeyedSubscript:@"tintColor"];
      v55 = [v53 _remoteUI_colorWithString:v54 defaultColor:0];

      style3 = [(RUIObjectModel *)self->_uiObjectModel style];
      [style3 setTintColor:v55];
    }
  }

LABEL_55:
  [(NSMutableArray *)self->_elementStack addObject:name];
}

- (void)traversalDelegateDidEndlement:(id)endlement
{
  endlementCopy = endlement;
  v4 = [(NSMutableString *)self->_accumulator copy];
  name = [endlementCopy name];
  v6 = name;
  parserState = self->_parserState;
  if (parserState)
  {
    if (parserState == 2)
    {
      if ([name isEqualToString:@"cancelButton"])
      {
        [(RUIAlertView *)self->_currentAlert addButtonWithTitle:v4 URL:0 style:1 attributes:self->_currentElementAttributes xmlElement:endlementCopy];
      }

      else if ([v6 isEqualToString:@"button"])
      {
        v8 = [(NSDictionary *)self->_currentElementAttributes objectForKeyedSubscript:@"destructive"];
        if ([v8 BOOLValue])
        {
          v9 = 2;
        }

        else
        {
          v9 = 0;
        }

        v10 = MEMORY[0x277CBEBC0];
        currentAlert = self->_currentAlert;
        v12 = [(NSDictionary *)self->_currentElementAttributes objectForKeyedSubscript:@"url"];
        v13 = [v10 URLWithString:v12];
        [(RUIAlertView *)currentAlert addButtonWithTitle:v4 URL:v13 style:v9 attributes:self->_currentElementAttributes xmlElement:endlementCopy];
      }

      else if ([v6 isEqualToString:@"alert"])
      {
        [(RUIObjectModel *)self->_uiObjectModel addAlertElement:self->_currentAlert];
        self->_parserState = 0;
        v14 = self->_currentAlert;
        self->_currentAlert = 0;
      }
    }

    else if (parserState == 1 && [name isEqualToString:@"script"])
    {
      self->_parserState = 0;
    }
  }

  else if ([name isEqualToString:@"xmlui"])
  {
    [(RUIObjectModel *)self->_uiObjectModel setPages:self->_pages];
    [(NSMutableArray *)self->_currentPageStack removeAllObjects];
    [(NSMutableArray *)self->_pages removeAllObjects];
  }

  else if ([v6 isEqualToString:@"page"])
  {
    [(NSMutableArray *)self->_currentPageStack removeLastObject];
  }

  [(NSMutableString *)self->_accumulator setString:&stru_282D68F58];
}

- (void)_validateDocumentContent
{
  allPages = [(RUIObjectModel *)self->_uiObjectModel allPages];
  if ([allPages count] || self->_actionSignal)
  {
LABEL_8:

    return;
  }

  primaryAlert = [(RUIObjectModel *)self->_uiObjectModel primaryAlert];
  if (primaryAlert || ([(RUIObjectModel *)self->_uiObjectModel scriptURL], (primaryAlert = objc_claimAutoreleasedReturnValue()) != 0) || ([(RUIObjectModel *)self->_uiObjectModel inlineScript], (primaryAlert = objc_claimAutoreleasedReturnValue()) != 0) || ([(RUIObjectModel *)self->_uiObjectModel clientInfo], (primaryAlert = objc_claimAutoreleasedReturnValue()) != 0))
  {

    goto LABEL_8;
  }

  serverInfo = [(RUIObjectModel *)self->_uiObjectModel serverInfo];

  if (!serverInfo && !self->_foundXMLUI)
  {
    isInternalInstall = _isInternalInstall(v5, v6);
    if (isInternalInstall)
    {
      v8 = _RUILoggingFacility(isInternalInstall);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B93D000, v8, OS_LOG_TYPE_DEFAULT, "No usable content in document!", buf, 2u);
      }
    }

    uiObjectModel = self->_uiObjectModel;
    self->_uiObjectModel = 0;

    self->_succeeded = 0;
    v10 = [RUIHTTPRequest errorWithCode:4];
    error = self->_error;
    self->_error = v10;
  }
}

- (void)traversalDelegateFoundCData:(id)data
{
  dataCopy = data;
  accumulator = self->_accumulator;
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:4];
  [(NSMutableString *)accumulator appendString:v5];

  if (self->_parserState == 1)
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:4];
    [(RUIObjectModel *)self->_uiObjectModel setInlineScript:v6];
  }
}

- (void)parser:(id)parser setDefaultActionSignal:(id)signal
{
  signalCopy = signal;
  actionSignal = self->_actionSignal;
  p_actionSignal = &self->_actionSignal;
  if (!actionSignal)
  {
    v9 = signalCopy;
    objc_storeStrong(p_actionSignal, signal);
    signalCopy = v9;
  }
}

- (RUIObjectModelParserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)traversalDelegateDidStartElement:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21B93D000, a2, OS_LOG_TYPE_ERROR, "warning: unknown action signal '%@'", &v2, 0xCu);
}

@end