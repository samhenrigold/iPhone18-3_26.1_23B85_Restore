@interface RUIParser
- (RUIParser)initWithBaseURL:(id)l style:(id)style delegate:(id)delegate decodingUserInfo:(id)info;
- (RUIParser)initWithDelegate:(id)delegate;
- (RUIParser)initWithXML:(id)l baseURL:(id)rL style:(id)style delegate:(id)delegate;
- (RUIParser)initWithXML:(id)l baseURL:(id)rL style:(id)style delegate:(id)delegate decodingUserInfo:(id)info;
- (RUIParserDelegate)delegate;
- (id)objectModelParser:(id)parser createPageWithName:(id)name attributes:(id)attributes;
- (id)parseXML:(id)l;
- (void)parseObjectModelWithXMLElement:(id)element;
@end

@implementation RUIParser

- (RUIParser)initWithXML:(id)l baseURL:(id)rL style:(id)style delegate:(id)delegate
{
  delegateCopy = delegate;
  styleCopy = style;
  rLCopy = rL;
  lCopy = l;
  v14 = objc_opt_new();
  v15 = [(RUIParser *)self initWithXML:lCopy baseURL:rLCopy style:styleCopy delegate:delegateCopy decodingUserInfo:v14];

  return v15;
}

- (RUIParser)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = RUIParser;
  v5 = [(RUIParser *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (RUIParser)initWithBaseURL:(id)l style:(id)style delegate:(id)delegate decodingUserInfo:(id)info
{
  lCopy = l;
  styleCopy = style;
  delegateCopy = delegate;
  infoCopy = info;
  v19.receiver = self;
  v19.super_class = RUIParser;
  v14 = [(RUIParser *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_delegate, delegateCopy);
    v16 = [[RUIObjectModelParser alloc] initWithBaseURL:lCopy style:styleCopy delegate:v15 decodingUserInfo:infoCopy];
    objectModelParser = v15->_objectModelParser;
    v15->_objectModelParser = v16;
  }

  return v15;
}

- (RUIParser)initWithXML:(id)l baseURL:(id)rL style:(id)style delegate:(id)delegate decodingUserInfo:(id)info
{
  lCopy = l;
  v13 = [(RUIParser *)self initWithBaseURL:rL style:style delegate:delegate decodingUserInfo:info];
  v14 = v13;
  if (v13)
  {
    v15 = [(RUIParser *)v13 parseXML:lCopy];
    [(RUIParser *)v14 parseObjectModelWithXMLElement:v15];
  }

  return v14;
}

- (void)parseObjectModelWithXMLElement:(id)element
{
  [(RUIObjectModelParser *)self->_objectModelParser parseXMLElement:element];
  error = [(RUIObjectModelParser *)self->_objectModelParser error];
  uiObjectModel = [(RUIObjectModelParser *)self->_objectModelParser uiObjectModel];
  error = self->_error;
  p_error = &self->_error;
  v5 = error;
  if (error)
  {
    v8 = v5;
  }

  else
  {
    v8 = error;
  }

  objc_storeStrong(p_error, v8);
  *(p_error - 24) = *p_error == 0;
  [uiObjectModel parseDidFinish];
}

- (id)parseXML:(id)l
{
  v30 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:lCopy encoding:4];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if (![v7 length])
  {
    isInternalInstall = _isInternalInstall(0, v8);
    if (isInternalInstall)
    {
      v10 = _RUILoggingFacility(isInternalInstall);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B93D000, v10, OS_LOG_TYPE_DEFAULT, "Treating empty document as valid", buf, 2u);
      }
    }

    v11 = [@"<xmlui action=push/>" dataUsingEncoding:4];

    lCopy = v11;
  }

  v12 = objc_alloc_init(RUIXMLSanitizer);
  v27 = 0;
  v13 = [(RUIXMLSanitizer *)v12 sanitizedXMLElementWithData:lCopy error:&v27];
  v14 = v27;
  v26 = 0;
  v15 = [(RUIXMLSanitizer *)v12 logStringWithXMLString:v5 error:&v26];
  v16 = v26;
  v18 = v16;
  if (v16)
  {
    v19 = _RUILoggingFacility(v16);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(RUIParser *)v18 parseXML:v19];
    }

LABEL_10:

    goto LABEL_11;
  }

  v25 = _isInternalInstall(0, v17);
  if (v25)
  {
    v19 = _RUILoggingFacility(v25);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v15;
      _os_log_impl(&dword_21B93D000, v19, OS_LOG_TYPE_DEFAULT, "RUIParser processing document:\n%@", buf, 0xCu);
    }

    goto LABEL_10;
  }

LABEL_11:
  if (v14)
  {
    error = self->_error;
    p_error = &self->_error;
    v20 = error;
    if (error)
    {
      v23 = v20;
    }

    else
    {
      v23 = v14;
    }

    objc_storeStrong(p_error, v23);
    *(p_error - 24) = 0;
  }

  return v13;
}

- (id)objectModelParser:(id)parser createPageWithName:(id)name attributes:(id)attributes
{
  nameCopy = name;
  attributesCopy = attributes;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    v12 = [v11 parser:self createPageWithName:nameCopy attributes:attributesCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (RUIParserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)parseXML:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21B93D000, a2, OS_LOG_TYPE_ERROR, "RUIParser failed to decode string with error:%@", &v2, 0xCu);
}

@end