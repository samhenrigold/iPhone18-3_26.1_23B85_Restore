@interface CoreDAVPropPatchTask
- (CoreDAVPropPatchTask)initWithPropertiesToSet:(id)set andRemove:(id)remove atURL:(id)l;
- (id)additionalHeaderValues;
- (id)copyDefaultParserForContentType:(id)type;
- (id)description;
- (id)requestBody;
- (void)finishCoreDAVTaskWithError:(id)error;
- (void)setPriorOrderedURL:(id)l;
@end

@implementation CoreDAVPropPatchTask

- (CoreDAVPropPatchTask)initWithPropertiesToSet:(id)set andRemove:(id)remove atURL:(id)l
{
  setCopy = set;
  removeCopy = remove;
  lCopy = l;
  if (!(setCopy | removeCopy) || ((v12 = lCopy, !setCopy) || ![setCopy count]) && (!removeCopy || !objc_msgSend(removeCopy, "count")))
  {
    v16 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"The 'setElements' set or the 'removeElements' set should be non-nil and non-empty" userInfo:0];
    objc_exception_throw(v16);
  }

  v17.receiver = self;
  v17.super_class = CoreDAVPropPatchTask;
  v13 = [(CoreDAVTask *)&v17 initWithURL:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_propPatchSetElements, set);
    objc_storeStrong(&v14->_propPatchRemoveElements, remove);
  }

  return v14;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v15.receiver = self;
  v15.super_class = CoreDAVPropPatchTask;
  v4 = [(CoreDAVActionBackedTask *)&v15 description];
  [v3 appendFormat:@"[%@ ", v4];

  propPatchSetElements = [(CoreDAVPropPatchTask *)self propPatchSetElements];
  if (propPatchSetElements)
  {
    propPatchSetElements2 = [(CoreDAVPropPatchTask *)self propPatchSetElements];
    [v3 appendFormat:@"| Number of properties to set: [%lu]", objc_msgSend(propPatchSetElements2, "count")];
  }

  else
  {
    [v3 appendFormat:@"| Number of properties to set: [%lu]", 0];
  }

  propPatchRemoveElements = [(CoreDAVPropPatchTask *)self propPatchRemoveElements];
  if (propPatchRemoveElements)
  {
    propPatchRemoveElements2 = [(CoreDAVPropPatchTask *)self propPatchRemoveElements];
    [v3 appendFormat:@"| Number of properties to remove: [%lu]", objc_msgSend(propPatchRemoveElements2, "count")];
  }

  else
  {
    [v3 appendFormat:@"| Number of properties to remove: [%lu]", 0];
  }

  v9 = +[CoreDAVLogging sharedLogging];
  v10 = [v9 shouldLogAtLevel:7 forAccountInfoProvider:0];

  if (v10)
  {
    requestBody = [(CoreDAVPropPatchTask *)self requestBody];
    bytes = [requestBody bytes];
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:bytes length:objc_msgSend(requestBody encoding:{"length"), 4}];
    [v3 appendFormat:@"\n  Request body: [%@]", v13];
  }

  [v3 appendFormat:@"]"];

  return v3;
}

- (id)additionalHeaderValues
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12.receiver = self;
  v12.super_class = CoreDAVPropPatchTask;
  additionalHeaderValues = [(CoreDAVTask *)&v12 additionalHeaderValues];
  [v3 addEntriesFromDictionary:additionalHeaderValues];

  if (self->_sendOrder)
  {
    cDVRawLastPathComponent = [(NSURL *)self->_priorOrderedURL CDVRawLastPathComponent];
    v6 = [cDVRawLastPathComponent length];
    if (v6)
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = CDVRelativeOrderHeaderString(v6);
      stringValue = [v7 stringWithFormat:@"%@%@", v8, cDVRawLastPathComponent];
    }

    else
    {
      v10 = [MEMORY[0x277CCABB0] numberWithInt:self->_absoluteOrder];
      stringValue = [v10 stringValue];

      if (!stringValue)
      {
LABEL_6:

        goto LABEL_7;
      }
    }

    [v3 setObject:stringValue forKey:@"Position"];
    goto LABEL_6;
  }

LABEL_7:

  return v3;
}

- (id)requestBody
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(CoreDAVXMLData);
  [(CoreDAVXMLData *)v3 setShouldAddFormattingSpaces:0];
  [(CoreDAVXMLData *)v3 startElement:@"propertyupdate" inNamespace:@"DAV:" withAttributeNamesAndValues:0];
  propPatchSetElements = [(CoreDAVPropPatchTask *)self propPatchSetElements];
  if (propPatchSetElements)
  {
    v5 = propPatchSetElements;
    propPatchSetElements2 = [(CoreDAVPropPatchTask *)self propPatchSetElements];
    v7 = [propPatchSetElements2 count];

    if (v7)
    {
      [(CoreDAVXMLData *)v3 startElement:@"set" inNamespace:@"DAV:" withAttributeNamesAndValues:0];
      [(CoreDAVXMLData *)v3 startElement:@"prop" inNamespace:@"DAV:" withAttributeNamesAndValues:0];
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      propPatchSetElements3 = [(CoreDAVPropPatchTask *)self propPatchSetElements];
      v9 = [propPatchSetElements3 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v29;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v29 != v11)
            {
              objc_enumerationMutation(propPatchSetElements3);
            }

            [*(*(&v28 + 1) + 8 * i) write:v3];
          }

          v10 = [propPatchSetElements3 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v10);
      }

      [(CoreDAVXMLData *)v3 endElement:@"prop" inNamespace:@"DAV:"];
      [(CoreDAVXMLData *)v3 endElement:@"set" inNamespace:@"DAV:"];
    }
  }

  propPatchRemoveElements = [(CoreDAVPropPatchTask *)self propPatchRemoveElements];
  if (propPatchRemoveElements)
  {
    v14 = propPatchRemoveElements;
    propPatchRemoveElements2 = [(CoreDAVPropPatchTask *)self propPatchRemoveElements];
    v16 = [propPatchRemoveElements2 count];

    if (v16)
    {
      [(CoreDAVXMLData *)v3 startElement:@"remove" inNamespace:@"DAV:" withAttributeNamesAndValues:0];
      [(CoreDAVXMLData *)v3 startElement:@"prop" inNamespace:@"DAV:" withAttributeNamesAndValues:0];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      propPatchRemoveElements3 = [(CoreDAVPropPatchTask *)self propPatchRemoveElements];
      v18 = [propPatchRemoveElements3 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v25;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v25 != v20)
            {
              objc_enumerationMutation(propPatchRemoveElements3);
            }

            [*(*(&v24 + 1) + 8 * j) write:v3];
          }

          v19 = [propPatchRemoveElements3 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v19);
      }

      [(CoreDAVXMLData *)v3 endElement:@"prop" inNamespace:@"DAV:"];
      [(CoreDAVXMLData *)v3 endElement:@"remove" inNamespace:@"DAV:"];
    }
  }

  [(CoreDAVXMLData *)v3 endElement:@"propertyupdate" inNamespace:@"DAV:"];
  data = [(CoreDAVXMLData *)v3 data];

  return data;
}

- (id)copyDefaultParserForContentType:(id)type
{
  v16 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  if ([CoreDAVXMLParser canHandleContentType:typeCopy])
  {
    v5 = [CoreDAVXMLParser alloc];
    v6 = objc_opt_class();
    v7 = [(CoreDAVTask *)self url];
    v8 = [(CoreDAVXMLParser *)v5 initWithRootElementNameSpace:@"DAV:" name:@"multistatus" parseClass:v6 baseURL:v7];

    [(CoreDAVXMLParser *)v8 setParseHints:0];
  }

  else
  {
    v9 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->super.super._accountInfoProvider);
    v11 = [v9 logHandleForAccountInfoProvider:WeakRetained];

    if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = typeCopy;
      _os_log_impl(&dword_2452FB000, v11, OS_LOG_TYPE_ERROR, "Refusing to parse response to PROPPATCH because of content-type: [%@].", buf, 0xCu);
    }

    v13.receiver = self;
    v13.super_class = CoreDAVPropPatchTask;
    v8 = [(CoreDAVTask *)&v13 copyDefaultParserForContentType:typeCopy];
  }

  return v8;
}

- (void)finishCoreDAVTaskWithError:(id)error
{
  v51 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    code = [errorCopy code];
    v7 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->super.super._accountInfoProvider);
    v9 = [v7 logHandleForAccountInfoProvider:WeakRetained];

    if (code == 1)
    {
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v48 = objc_opt_class();
          v11 = v48;
          v12 = "%{public}@ cancelled";
          v13 = v10;
          v14 = OS_LOG_TYPE_INFO;
          v15 = 12;
LABEL_11:
          _os_log_impl(&dword_2452FB000, v13, v14, v12, buf, v15);

          goto LABEL_12;
        }

        goto LABEL_12;
      }
    }

    else if (v9)
    {
      v17 = v9;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v48 = objc_opt_class();
        v49 = 2112;
        v50 = v5;
        v11 = v48;
        v12 = "%{public}@ failed: %@";
        v13 = v17;
        v14 = OS_LOG_TYPE_ERROR;
        v15 = 22;
        goto LABEL_11;
      }

LABEL_12:
    }

    v18 = v5;
LABEL_14:
    v19 = v18;
    goto LABEL_27;
  }

  responseBodyParser = [(CoreDAVTask *)self responseBodyParser];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    simulated = [(CoreDAVTask *)self simulated];

    if (!simulated)
    {
      v41 = +[CoreDAVLogging sharedLogging];
      v42 = objc_loadWeakRetained(&self->super.super._accountInfoProvider);
      v43 = [v41 logHandleForAccountInfoProvider:v42];

      if (v43)
      {
        v44 = v43;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          responseBodyParser2 = [(CoreDAVTask *)self responseBodyParser];
          *buf = 138412290;
          v48 = responseBodyParser2;
          _os_log_impl(&dword_2452FB000, v44, OS_LOG_TYPE_ERROR, "Unexpected parse response object for PROPPATCH: [%@].", buf, 0xCu);
        }
      }

      v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:3 userInfo:0];
      goto LABEL_14;
    }
  }

  if ([(CoreDAVTask *)self simulated])
  {
    simulatedRootElement = [(CoreDAVTask *)self simulatedRootElement];
  }

  else
  {
    responseBodyParser3 = [(CoreDAVTask *)self responseBodyParser];
    simulatedRootElement = [responseBodyParser3 rootElement];
  }

  responses = [simulatedRootElement responses];
  anyObject = [responses anyObject];
  [(CoreDAVPropPatchTask *)self setResponseItem:anyObject];

  responseItem = [(CoreDAVPropPatchTask *)self responseItem];
  LODWORD(anyObject) = [responseItem hasPropertyError];

  if (!anyObject)
  {
    goto LABEL_25;
  }

  v26 = +[CoreDAVLogging sharedLogging];
  v27 = objc_loadWeakRetained(&self->super.super._accountInfoProvider);
  v28 = [v26 logHandleForAccountInfoProvider:v27];

  if (v28)
  {
    v29 = v28;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      responseItem2 = [(CoreDAVPropPatchTask *)self responseItem];
      *buf = 138412290;
      v48 = responseItem2;
      _os_log_impl(&dword_2452FB000, v29, OS_LOG_TYPE_DEFAULT, "There were some failures changing properties, according to the following response: [%@].", buf, 0xCu);
    }
  }

  responseItem3 = [(CoreDAVPropPatchTask *)self responseItem];
  successfulPropertiesToValues = [responseItem3 successfulPropertiesToValues];
  v33 = [successfulPropertiesToValues count];

  if (!v33)
  {
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:2 userInfo:0];
  }

  else
  {
LABEL_25:
    v19 = 0;
  }

LABEL_27:
  self->super.super._numDownloadedElements = [0 count];
  if (v19)
  {
    v34 = v19;

    v5 = v34;
  }

  delegate = [(CoreDAVTask *)self delegate];
  v36 = objc_opt_respondsToSelector();

  if (v36)
  {
    responseItem4 = [(CoreDAVPropPatchTask *)self responseItem];

    if (responseItem4)
    {
      v38 = MEMORY[0x277CBEA60];
      responseItem5 = [(CoreDAVPropPatchTask *)self responseItem];
      responseItem4 = [v38 arrayWithObject:responseItem5];
    }

    delegate2 = [(CoreDAVTask *)self delegate];
    [delegate2 propPatchTask:self parsedResponses:responseItem4 error:v19];

    [(CoreDAVTask *)self setDelegate:0];
  }

  v46.receiver = self;
  v46.super_class = CoreDAVPropPatchTask;
  [(CoreDAVTask *)&v46 finishCoreDAVTaskWithError:v5];
}

- (void)setPriorOrderedURL:(id)l
{
  lCopy = l;
  if (self->_priorOrderedURL != lCopy)
  {
    v6 = lCopy;
    objc_storeStrong(&self->_priorOrderedURL, l);
    lCopy = v6;
    if (self->_priorOrderedURL)
    {
      self->_sendOrder = 1;
    }
  }
}

@end