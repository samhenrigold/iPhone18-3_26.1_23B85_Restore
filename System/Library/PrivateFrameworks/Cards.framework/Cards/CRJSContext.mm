@interface CRJSContext
+ (id)sharedContext;
- (CRJSContext)initWithVirtualMachine:(id)machine;
- (id)_cardWithTitle:(id)title cardSections:(id)sections interaction:(id)interaction error:(id *)error;
- (void)_createCard:(id)card completionHandler:(id)handler;
- (void)evaluateScript:(id)script completionHandler:(id)handler;
@end

@implementation CRJSContext

- (CRJSContext)initWithVirtualMachine:(id)machine
{
  machineCopy = machine;
  v26.receiver = self;
  v26.super_class = CRJSContext;
  v5 = [(CRJSContext *)&v26 initWithVirtualMachine:machineCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [(CRJSContext *)v5 setObject:v6 forKeyedSubscript:v8];

    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 pathForResource:@"Base" ofType:@"js"];
    v12 = [v9 stringWithContentsOfFile:v11 encoding:4 error:0];

    v13 = [(CRJSContext *)v5 evaluateScript:v12];
    objc_initWeak(&location, v5);
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __38__CRJSContext_initWithVirtualMachine___block_invoke;
    v23 = &unk_278DA59A0;
    objc_copyWeak(&v24, &location);
    v14 = MEMORY[0x245D2DFD0](&v20);
    v15 = [(CRJSContext *)v5 objectForKeyedSubscript:@"System", v20, v21, v22, v23];
    [v15 setObject:v14 forKeyedSubscript:@"Data"];

    v16 = [(CRJSContext *)v5 evaluateScript:@"var console = {}"];
    v17 = [(CRJSContext *)v5 objectForKeyedSubscript:@"console"];
    [v17 setObject:&__block_literal_global_2 forKeyedSubscript:@"log"];

    v18 = [(CRJSContext *)v5 objectForKeyedSubscript:@"console"];
    [v18 setObject:&__block_literal_global_62 forKeyedSubscript:@"error"];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v5;
}

id __38__CRJSContext_initWithVirtualMachine___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = MEMORY[0x277CBEA90];
  v6 = [v3 toString];

  v7 = [v5 dataWithContentsOfFile:v6];

  if (v7)
  {
    [MEMORY[0x277CD4658] valueWithObject:v7 inContext:WeakRetained];
  }

  else
  {
    [MEMORY[0x277CD4658] valueWithNullInContext:WeakRetained];
  }
  v8 = ;

  return v8;
}

+ (id)sharedContext
{
  if (sharedContext_onceToken != -1)
  {
    +[CRJSContext sharedContext];
  }

  v3 = sharedContext_sharedContext;

  return v3;
}

void __28__CRJSContext_sharedContext__block_invoke()
{
  v0 = [CRJSContext alloc];
  v3 = objc_alloc_init(MEMORY[0x277CD4660]);
  v1 = [(CRJSContext *)v0 initWithVirtualMachine:v3];
  v2 = sharedContext_sharedContext;
  sharedContext_sharedContext = v1;
}

- (void)evaluateScript:(id)script completionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  scriptCopy = script;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (handlerCopy)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __48__CRJSContext_evaluateScript_completionHandler___block_invoke;
    v20[3] = &unk_278DA59E8;
    v9 = handlerCopy;
    v21 = v9;
    [(CRJSContext *)self setExceptionHandler:v20];
    objc_initWeak(&location, self);
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __48__CRJSContext_evaluateScript_completionHandler___block_invoke_2;
    v16 = &unk_278DA5A10;
    objc_copyWeak(&v18, &location);
    v17 = v9;
    v10 = MEMORY[0x245D2DFD0](&v13);
    [(CRJSContext *)self setObject:v10 forKeyedSubscript:@"createCard"];

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"createCard(function() { %@ }())", scriptCopy, v13, v14, v15, v16];;
    v12 = [(CRJSContext *)self evaluateScript:v11];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __48__CRJSContext_evaluateScript_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA450];
  v5 = [a3 toString];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v7 = [v4 errorWithDomain:@"CRJSContextErrorDomain" code:0 userInfo:v6];

  (*(*(a1 + 32) + 16))();
}

void __48__CRJSContext_evaluateScript_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _createCard:v3 completionHandler:*(a1 + 32)];
}

- (void)_createCard:(id)card completionHandler:(id)handler
{
  cardCopy = card;
  handlerCopy = handler;
  v8 = [cardCopy valueForProperty:@"sash"];
  v9 = [v8 valueForProperty:@"applicationBundleIdentifier"];
  v10 = [v8 valueForProperty:@"title"];
  v11 = [cardCopy valueForProperty:@"cardSections"];
  toArray = [v11 toArray];

  if ([v9 isUndefined])
  {
    toString = 0;
  }

  else
  {
    toString = [v9 toString];
  }

  if ([v10 isUndefined])
  {
    toString2 = 0;
  }

  else
  {
    toString2 = [v10 toString];
  }

  v23 = cardCopy;
  v15 = [cardCopy valueForProperty:@"interaction"];
  toDictionary = [v15 toDictionary];

  v24 = 0;
  v17 = [(CRJSContext *)self _cardWithTitle:toString2 cardSections:toArray interaction:toDictionary error:&v24];
  v18 = v24;
  if (v18)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v18);
  }

  else
  {
    [v17 data];
    v22 = v8;
    v19 = v10;
    v21 = v20 = v9;
    (*(handlerCopy + 2))(handlerCopy, toString, toString2, v21, 0);

    v9 = v20;
    v10 = v19;
    v8 = v22;
  }
}

- (id)_cardWithTitle:(id)title cardSections:(id)sections interaction:(id)interaction error:(id *)error
{
  v56 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  sectionsCopy = sections;
  interactionCopy = interaction;
  if (![sectionsCopy count])
  {
    v26 = 0;
    goto LABEL_29;
  }

  errorCopy = error;
  v41 = [interactionCopy objectForKeyedSubscript:@"intent"];
  v38 = interactionCopy;
  v40 = [interactionCopy objectForKeyedSubscript:@"intentResponse"];
  v47 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(sectionsCopy, "count")}];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v39 = sectionsCopy;
  obj = sectionsCopy;
  v44 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v44)
  {
    v43 = *v50;
    v11 = 0x277CBE000uLL;
LABEL_4:
    v12 = 0;
    while (1)
    {
      if (*v50 != v43)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v49 + 1) + 8 * v12);
      v14 = [v13 objectForKeyedSubscript:@"_backingObject"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v15 = [v13 objectForKeyedSubscript:@"_type"];
      integerValue = [v15 integerValue];

      v17 = [v13 objectForKeyedSubscript:@"_value"];
      v18 = [v13 objectForKeyedSubscript:@"nextCard"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = 0;
      }

      else
      {
        v19 = [v18 objectForKeyedSubscript:@"cardSections"];
      }

      v20 = v11;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = 0;
      }

      else
      {
        v21 = [v18 objectForKeyedSubscript:@"interaction"];
      }

      v22 = objc_alloc_init(MEMORY[0x277D4C738]);
      NSSelectorFromString(v17);
      if (objc_opt_respondsToSelector())
      {
        backingObject = [v14 backingObject];
        [v22 setValue:backingObject forKey:v17];
      }

      v24 = objc_alloc_init(MEMORY[0x277D4C730]);
      [v24 setType:integerValue];
      [v24 setValue:v22];
      v25 = [(CRJSContext *)self _cardWithTitle:titleCopy cardSections:v19 interaction:v21 error:errorCopy];
      [v24 setNextCard:v25];

      [v47 addObject:v24];
      ++v12;
      v11 = v20;
      if (v44 == v12)
      {
        v44 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
        if (v44)
        {
          goto LABEL_4;
        }

        goto LABEL_18;
      }
    }

    if (errorCopy)
    {
      v36 = MEMORY[0x277CCA9B8];
      v53 = *MEMORY[0x277CCA450];
      v54 = @"Unable to create card";
      backingObject3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      [v36 errorWithDomain:@"CRJSContextErrorDomain" code:1 userInfo:backingObject3];
      *errorCopy = v26 = 0;
      goto LABEL_24;
    }

    v26 = 0;
    interactionCopy = v38;
    sectionsCopy = v39;
  }

  else
  {
LABEL_18:

    v26 = objc_alloc_init(MEMORY[0x277D4C728]);
    [v26 setTitle:titleCopy];
    [v26 setCardSections:v47];
    v27 = v41;
    if (v41)
    {
      v28 = [v41 objectForKeyedSubscript:@"_backingObject"];
      v29 = [v41 objectForKeyedSubscript:@"_type"];
      backingObject2 = [v28 backingObject];
      [v26 setIntentMessageName:v29];
      data = [backingObject2 data];
      [v26 setIntentMessageData:data];
    }

    v32 = v40;
    if (!v40)
    {
      interactionCopy = v38;
      sectionsCopy = v39;
      goto LABEL_28;
    }

    v33 = [v40 objectForKeyedSubscript:@"_backingObject"];
    v14 = [v40 objectForKeyedSubscript:@"_type"];
    obj = v33;
    backingObject3 = [v33 backingObject];
    [v26 setIntentResponseMessageName:v14];
    data2 = [backingObject3 data];
    [v26 setIntentResponseMessageData:data2];

LABEL_24:
    interactionCopy = v38;
    sectionsCopy = v39;
  }

  v32 = v40;
  v27 = v41;
LABEL_28:

LABEL_29:

  return v26;
}

@end