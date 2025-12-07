@interface SASPresentationModel
- (SASPresentationModel)initWithPresentationServer:(id)server;
- (void)flushEnqueuedButtonEventCompletions;
@end

@implementation SASPresentationModel

- (void)flushEnqueuedButtonEventCompletions
{
  v22 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_enqueuedButtonEventCompletions count])
  {
    v3 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      enqueuedButtonEventCompletions = self->_enqueuedButtonEventCompletions;
      v5 = v3;
      *buf = 136315394;
      v19 = "[SASPresentationModel flushEnqueuedButtonEventCompletions]";
      v20 = 2048;
      v21 = [(NSMutableArray *)enqueuedButtonEventCompletions count];
      _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation sending completions for %lu cached event(s)", buf, 0x16u);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = self->_enqueuedButtonEventCompletions;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          presentationServer = [(SASPresentationModel *)self presentationServer];
          (*(v11 + 16))(v11, presentationServer);

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [(NSMutableArray *)self->_enqueuedButtonEventCompletions removeAllObjects];
  }
}

- (SASPresentationModel)initWithPresentationServer:(id)server
{
  serverCopy = server;
  v11.receiver = self;
  v11.super_class = SASPresentationModel;
  v6 = [(SASPresentationModel *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_presentationServer, server);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    enqueuedButtonEventCompletions = v7->_enqueuedButtonEventCompletions;
    v7->_enqueuedButtonEventCompletions = v8;
  }

  return v7;
}

@end