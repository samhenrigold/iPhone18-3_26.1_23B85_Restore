@interface DDRemoteActionContext
+ (BOOL)isClassAllowedFromString:(id)string;
- (DDRemoteActionContext)initWithCoder:(id)coder;
- (DDRemoteActionContext)initWithURL:(id)l result:(__DDResult *)result context:(id)context associatedResults:(id)results associatedVisualResults:(id)visualResults contactHandle:(id)handle className:(id)name;
- (id)createContact:(BOOL *)contact;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DDRemoteActionContext

+ (BOOL)isClassAllowedFromString:(id)string
{
  if (string)
  {
    return [&unk_282C2BE00 containsObject:?];
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  result = self->_result;
  if (result)
  {
    CFRelease(result);
    self->_result = 0;
  }

  v4.receiver = self;
  v4.super_class = DDRemoteActionContext;
  [(DDRemoteActionContext *)&v4 dealloc];
}

- (DDRemoteActionContext)initWithURL:(id)l result:(__DDResult *)result context:(id)context associatedResults:(id)results associatedVisualResults:(id)visualResults contactHandle:(id)handle className:(id)name
{
  lCopy = l;
  contextCopy = context;
  resultsCopy = results;
  visualResultsCopy = visualResults;
  handleCopy = handle;
  nameCopy = name;
  v26.receiver = self;
  v26.super_class = DDRemoteActionContext;
  v18 = [(DDRemoteActionContext *)&v26 init];
  if (!v18)
  {
LABEL_6:
    v20 = 0;
    goto LABEL_9;
  }

  if (![DDRemoteActionContext isClassAllowedFromString:nameCopy, visualResultsCopy, resultsCopy, contextCopy, lCopy])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      [DDRemoteActionContext initWithURL:result:context:associatedResults:associatedVisualResults:contactHandle:className:];
      v20 = 0;
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  objc_storeStrong(&v18->_URL, l);
  if (result)
  {
    v19 = CFRetain(result);
  }

  else
  {
    v19 = 0;
  }

  v18->_result = v19;
  objc_storeStrong(&v18->_context, context);
  objc_storeStrong(&v18->_actionClass, name);
  objc_storeStrong(&v18->_associatedResults, results);
  objc_storeStrong(&v18->_associatedVisualResults, visualResults);
  objc_storeStrong(&v18->_contactHandle, handle);
  v20 = v18;
LABEL_9:

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [DDAction encodableContextWithContext:self->_context];
  [coderCopy encodeObject:v4 forKey:@"context"];

  [coderCopy encodeObject:self->_actionClass forKey:@"actionClass"];
  if (self->_result)
  {
    v5 = [MEMORY[0x277D04218] resultFromCoreResult:?];
    [coderCopy encodeObject:v5 forKey:@"result"];
  }

  if (self->_associatedResults)
  {
    v6 = [MEMORY[0x277D04218] resultsFromCoreResults:?];
    [coderCopy encodeObject:v6 forKey:@"associatedResults"];
  }

  associatedVisualResults = self->_associatedVisualResults;
  if (associatedVisualResults)
  {
    [coderCopy encodeObject:associatedVisualResults forKey:@"associatedVisualResults"];
  }

  contactHandle = self->_contactHandle;
  if (contactHandle)
  {
    [coderCopy encodeObject:contactHandle forKey:@"contactHandle"];
  }

  v9 = [(DDRemoteActionContext *)self URL];
  [coderCopy encodeObject:v9 forKey:@"url"];
}

- (DDRemoteActionContext)initWithCoder:(id)coder
{
  v51 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v49.receiver = self;
  v49.super_class = DDRemoteActionContext;
  v6 = [(DDRemoteActionContext *)&v49 init];
  if (!v6)
  {
    goto LABEL_19;
  }

  v44 = a2;
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  [(DDRemoteActionContext *)v6 setURL:v7];

  v8 = objc_alloc(MEMORY[0x277CBEB38]);
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v9 setWithObjects:{v10, v11, v12, v13, v14, objc_opt_class(), 0}];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"context"];
  v17 = [v8 initWithDictionary:v16];
  [(DDRemoteActionContext *)v6 setContext:v17];

  if ([coderCopy containsValueForKey:@"result"])
  {
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"result"];
    -[DDRemoteActionContext setResult:](v6, "setResult:", CFRetain([v22 coreResult]));

    if (![coderCopy containsValueForKey:@"associatedResults"])
    {
LABEL_4:
      if (![coderCopy containsValueForKey:@"associatedVisualResults"])
      {
        goto LABEL_5;
      }

LABEL_21:
      v38 = MEMORY[0x277CBEB98];
      v39 = objc_opt_class();
      v40 = objc_opt_class();
      v41 = [v38 setWithObjects:{v39, v40, objc_opt_class(), 0}];
      v42 = [coderCopy decodeObjectOfClasses:v41 forKey:@"associatedVisualResults"];
      associatedVisualResults = v6->_associatedVisualResults;
      v6->_associatedVisualResults = v42;

      if (![coderCopy containsValueForKey:@"contactHandle"])
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (![coderCopy containsValueForKey:@"associatedResults"])
  {
    goto LABEL_4;
  }

  v23 = MEMORY[0x277CBEB98];
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = [v23 setWithObjects:{v24, v25, objc_opt_class(), 0}];
  v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"associatedResults"];

  v28 = objc_opt_new();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v29 = v27;
  v30 = [v29 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v46;
    do
    {
      v33 = 0;
      do
      {
        if (*v46 != v32)
        {
          objc_enumerationMutation(v29);
        }

        -[NSArray addObject:](v28, "addObject:", [*(*(&v45 + 1) + 8 * v33++) coreResult]);
      }

      while (v31 != v33);
      v31 = [v29 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v31);
  }

  associatedResults = v6->_associatedResults;
  v6->_associatedResults = v28;

  if ([coderCopy containsValueForKey:@"associatedVisualResults"])
  {
    goto LABEL_21;
  }

LABEL_5:
  if ([coderCopy containsValueForKey:@"contactHandle"])
  {
LABEL_6:
    v18 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"contactHandle"];
    contactHandle = v6->_contactHandle;
    v6->_contactHandle = v19;
  }

LABEL_7:
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionClass"];
  if ([DDRemoteActionContext isClassAllowedFromString:v21])
  {
    [(DDRemoteActionContext *)v6 setActionClass:v21];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:v44 object:v6 file:@"DDRemoteAction.m" lineNumber:901 description:@"Trying to create a context with an invalid preview action class or an empty class."];
  }

  v35 = v6;

LABEL_19:
  return v6;
}

- (id)createContact:(BOOL *)contact
{
  result = [(DDRemoteActionContext *)self result];
  v6 = [(DDRemoteActionContext *)self URL];
  associatedVisualResults = [(DDRemoteActionContext *)self associatedVisualResults];
  v8 = DDContactFromResult(result, v6, associatedVisualResults, contact);

  return v8;
}

@end