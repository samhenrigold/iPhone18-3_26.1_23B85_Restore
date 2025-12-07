@interface _UVBSActionHandler
- (_UVBSActionHandler)initWithHandler:(id)handler;
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
@end

@implementation _UVBSActionHandler

- (_UVBSActionHandler)initWithHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = _UVBSActionHandler;
  v5 = [(_UVBSActionHandler *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(handlerCopy);
    handler = v5->_handler;
    v5->_handler = v6;
  }

  return v5;
}

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  v8 = [actionsCopy mutableCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = actionsCopy;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if ((*(self->_handler + 2))(self->_handler))
        {
          [v8 removeObject:{v14, v16}];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

@end