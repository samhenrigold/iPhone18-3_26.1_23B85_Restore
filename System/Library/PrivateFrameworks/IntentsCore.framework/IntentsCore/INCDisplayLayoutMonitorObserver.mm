@interface INCDisplayLayoutMonitorObserver
+ (void)initialize;
- (void)updateDisplayLayout:(id)layout;
@end

@implementation INCDisplayLayoutMonitorObserver

- (void)updateDisplayLayout:(id)layout
{
  v22 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  if (self->_handler)
  {
    v5 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v19 = "[INCDisplayLayoutMonitorObserver updateDisplayLayout:]";
      v20 = 2112;
      v21 = layoutCopy;
      _os_log_impl(&dword_255503000, v5, OS_LOG_TYPE_INFO, "%s Layout changed to: %@", buf, 0x16u);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    elements = [layoutCopy elements];
    v7 = [elements countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(elements);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          if ([v12 _intents_isExpectedElement])
          {
            v9 |= [v12 _intents_isSiri];
          }
        }

        v8 = [elements countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    (*(self->_handler + 2))();
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    INLogInitIfNeeded();
  }
}

@end