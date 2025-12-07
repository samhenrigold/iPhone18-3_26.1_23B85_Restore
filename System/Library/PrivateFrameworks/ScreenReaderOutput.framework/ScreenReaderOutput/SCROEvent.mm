@interface SCROEvent
+ (id)brailleEvent;
- (id)claimValueForKey:(int)key;
- (id)initForHandlerType:(int)type;
- (id)mainDictionary;
- (void)performWithHandler:(id)handler trusted:(BOOL)trusted;
- (void)requestPerformActionForKey:(int)key;
- (void)requestRegisterCallbackForKey:(int)key;
- (void)requestSetValue:(id)value forKey:(int)key;
- (void)requestValueForKey:(int)key;
- (void)setMainDictionary:(id)dictionary;
@end

@implementation SCROEvent

+ (id)brailleEvent
{
  v2 = [objc_alloc(objc_opt_class()) initForHandlerType:1];

  return v2;
}

- (id)initForHandlerType:(int)type
{
  result = [(SCROEvent *)self init];
  if (result)
  {
    *(result + 2) = type;
  }

  return result;
}

- (void)requestRegisterCallbackForKey:(int)key
{
  if (self->_readOnly)
  {
    v4 = MEMORY[0x277CBEAD8];

    [v4 raise:@"SCROEventException" format:@"Error trying to register callbacks in a readonly SCROEvent"];
  }

  else
  {
    v5 = *&key;
    callbacks = self->_callbacks;
    if (!callbacks)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v9 = self->_callbacks;
      self->_callbacks = v8;

      callbacks = self->_callbacks;
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInt:v5];
    [(NSMutableArray *)callbacks addObject:v10];
  }
}

- (void)requestSetValue:(id)value forKey:(int)key
{
  v4 = *&key;
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [valueCopy copy];

    valueCopy = v6;
  }

  if (self->_readOnly)
  {
    [MEMORY[0x277CBEAD8] raise:@"SCROEventException" format:@"Error trying to request values to be set in a readonly SCROEvent"];
LABEL_11:
    v12 = valueCopy;
    goto LABEL_12;
  }

  setDictionary = self->_setDictionary;
  if (!setDictionary)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_setDictionary;
    self->_setDictionary = v8;

    setDictionary = self->_setDictionary;
  }

  null = valueCopy;
  if (!valueCopy)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  [(NSMutableDictionary *)setDictionary setObject:null forKey:v11];

  v12 = valueCopy;
  if (!valueCopy)
  {

    goto LABEL_11;
  }

LABEL_12:
}

- (void)requestValueForKey:(int)key
{
  if (self->_readOnly)
  {
    v4 = MEMORY[0x277CBEAD8];

    [v4 raise:@"SCROEventException" format:@"Error trying to request values in a readonly SCROEvent"];
  }

  else
  {
    v5 = *&key;
    getDictionary = self->_getDictionary;
    if (!getDictionary)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v9 = self->_getDictionary;
      self->_getDictionary = v8;

      getDictionary = self->_getDictionary;
    }

    null = [MEMORY[0x277CBEB68] null];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:v5];
    [(NSMutableDictionary *)getDictionary setObject:null forKey:v10];
  }
}

- (void)requestPerformActionForKey:(int)key
{
  if (self->_readOnly)
  {
    v4 = MEMORY[0x277CBEAD8];

    [v4 raise:@"SCROEventException" format:@"Error trying to request perform action in a readonly SCROEvent"];
  }

  else
  {
    v5 = *&key;
    actions = self->_actions;
    if (!actions)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v9 = self->_actions;
      self->_actions = v8;

      actions = self->_actions;
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInt:v5];
    [(NSMutableArray *)actions addObject:v10];
  }
}

- (id)claimValueForKey:(int)key
{
  getDictionary = self->_getDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&key];
  v5 = [(NSMutableDictionary *)getDictionary objectForKey:v4];

  if (v5)
  {
    null = [MEMORY[0x277CBEB68] null];
    if (v5 == null)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setMainDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  self->_readOnly = 1;
  v9 = dictionaryCopy;
  v5 = [dictionaryCopy objectForKey:&unk_287651C98];
  if (v5)
  {
    objc_storeStrong(&self->_callbacks, v5);
  }

  v6 = [v9 objectForKey:&unk_287651CB0];

  if (v6)
  {
    objc_storeStrong(&self->_setDictionary, v6);
  }

  v7 = [v9 objectForKey:&unk_287651CC8];

  if (v7)
  {
    objc_storeStrong(&self->_getDictionary, v7);
  }

  v8 = [v9 objectForKey:&unk_287651CE0];

  if (v8)
  {
    objc_storeStrong(&self->_actions, v8);
  }
}

- (id)mainDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  callbacks = self->_callbacks;
  if (callbacks)
  {
    [dictionary setObject:callbacks forKey:&unk_287651C98];
  }

  setDictionary = self->_setDictionary;
  if (setDictionary)
  {
    [v4 setObject:setDictionary forKey:&unk_287651CB0];
  }

  getDictionary = self->_getDictionary;
  if (getDictionary)
  {
    [v4 setObject:getDictionary forKey:&unk_287651CC8];
  }

  actions = self->_actions;
  if (actions)
  {
    [v4 setObject:actions forKey:&unk_287651CE0];
  }

  return v4;
}

- (void)performWithHandler:(id)handler trusted:(BOOL)trusted
{
  trustedCopy = trusted;
  v63 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  [handlerCopy handlePerformActionForKey:1 trusted:trustedCopy];
  selfCopy = self;
  callbacks = self->_callbacks;
  if (callbacks)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v8 = callbacks;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v55 objects:v62 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v56;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v56 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [handlerCopy handleRegisterCallbackForKey:objc_msgSend(*(*(&v55 + 1) + 8 * i) trusted:{"intValue"), trustedCopy}];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v55 objects:v62 count:16];
      }

      while (v10);
    }
  }

  setDictionary = selfCopy->_setDictionary;
  if (setDictionary)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = setDictionary;
    v14 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v51 objects:v61 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v52;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v52 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v51 + 1) + 8 * j);
          v19 = [(NSMutableDictionary *)selfCopy->_setDictionary objectForKey:v18];
          null = [MEMORY[0x277CBEB68] null];
          if (v19 == null)
          {
            v21 = 0;
          }

          else
          {
            v21 = v19;
          }

          [handlerCopy handleSetValue:v21 forKey:objc_msgSend(v18 trusted:{"intValue"), trustedCopy}];
        }

        v15 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v51 objects:v61 count:16];
      }

      while (v15);
    }
  }

  getDictionary = selfCopy->_getDictionary;
  if (getDictionary)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v23 = getDictionary;
    v24 = [(NSMutableDictionary *)v23 countByEnumeratingWithState:&v47 objects:v60 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v48;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v48 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v47 + 1) + 8 * k);
          v46 = 0;
          v29 = [handlerCopy handleGetValue:&v46 forKey:objc_msgSend(v28 trusted:{"intValue"), trustedCopy}];
          v30 = v46;
          v31 = v30;
          if (!v29)
          {
            v32 = selfCopy->_getDictionary;
            if (v30)
            {
              [(NSMutableDictionary *)selfCopy->_getDictionary setObject:v30 forKey:v28];
            }

            else
            {
              null2 = [MEMORY[0x277CBEB68] null];
              [(NSMutableDictionary *)v32 setObject:null2 forKey:v28];
            }
          }
        }

        v25 = [(NSMutableDictionary *)v23 countByEnumeratingWithState:&v47 objects:v60 count:16];
      }

      while (v25);
    }
  }

  actions = selfCopy->_actions;
  if (actions)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v35 = actions;
    v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v42 objects:v59 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v43;
      do
      {
        for (m = 0; m != v37; ++m)
        {
          if (*v43 != v38)
          {
            objc_enumerationMutation(v35);
          }

          [handlerCopy handlePerformActionForKey:objc_msgSend(*(*(&v42 + 1) + 8 * m) trusted:{"intValue"), trustedCopy}];
        }

        v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v42 objects:v59 count:16];
      }

      while (v37);
    }
  }

  [handlerCopy handlePerformActionForKey:2 trusted:trustedCopy];
}

@end