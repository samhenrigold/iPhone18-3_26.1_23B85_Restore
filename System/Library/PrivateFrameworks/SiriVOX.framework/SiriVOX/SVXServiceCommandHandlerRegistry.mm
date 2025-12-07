@interface SVXServiceCommandHandlerRegistry
- (SVXServiceCommandHandlerRegistry)initWithHandlers:(id)handlers;
- (id)handlersForCommand:(id)command;
@end

@implementation SVXServiceCommandHandlerRegistry

- (id)handlersForCommand:(id)command
{
  commandCopy = command;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    while (1)
    {
      handlersByServiceCommandClassName = self->_handlersByServiceCommandClassName;
      v9 = NSStringFromClass(v7);
      v10 = [(NSDictionary *)handlersByServiceCommandClassName objectForKey:v9];

      if ([v10 count])
      {
        [v5 addObjectsFromArray:v10];
      }

      if (v7 == objc_opt_class())
      {
        break;
      }

      v7 = [(objc_class *)v7 superclass];

      if (!v7)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:
  v11 = [v5 copy];

  return v11;
}

- (SVXServiceCommandHandlerRegistry)initWithHandlers:(id)handlers
{
  v39 = *MEMORY[0x277D85DE8];
  handlersCopy = handlers;
  v36.receiver = self;
  v36.super_class = SVXServiceCommandHandlerRegistry;
  v5 = [(SVXServiceCommandHandlerRegistry *)&v36 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v27 = handlersCopy;
    v7 = handlersCopy;
    v8 = [v7 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v33;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v32 + 1) + 8 * i);
          supportedCommandClass = [objc_opt_class() supportedCommandClass];
          v14 = NSStringFromClass(supportedCommandClass);
          v15 = [v6 objectForKey:v14];
          if (!v15)
          {
            v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [v6 setObject:v15 forKey:v14];
          }

          [v15 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v9);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    allKeys = [v6 allKeys];
    v17 = [allKeys countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(allKeys);
          }

          v21 = *(*(&v28 + 1) + 8 * j);
          v22 = [v6 objectForKey:v21];
          v23 = [v22 copy];
          [v6 setObject:v23 forKey:v21];
        }

        v18 = [allKeys countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v18);
    }

    v24 = [v6 copy];
    handlersByServiceCommandClassName = v5->_handlersByServiceCommandClassName;
    v5->_handlersByServiceCommandClassName = v24;

    handlersCopy = v27;
  }

  return v5;
}

@end