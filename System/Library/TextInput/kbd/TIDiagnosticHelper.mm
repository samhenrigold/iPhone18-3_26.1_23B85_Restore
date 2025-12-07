@interface TIDiagnosticHelper
+ (id)sharedInstance;
- (TIDiagnosticHelper)init;
- (id)registerForSignal:(int)signal withBlock:(id)block;
- (void)dealloc;
- (void)handleMachMessage:(void *)message;
- (void)unregisterSignalHandler:(id)handler;
@end

@implementation TIDiagnosticHelper

+ (id)sharedInstance
{
  if (qword_100026550 != -1)
  {
    sub_10000D5A4();
  }

  v3 = qword_100026548;

  return v3;
}

- (TIDiagnosticHelper)init
{
  v9.receiver = self;
  v9.super_class = TIDiagnosticHelper;
  v2 = [(TIDiagnosticHelper *)&v9 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    handlers = v2->_handlers;
    v2->_handlers = v3;

    v5 = +[NSMachPort port];
    port = v2->_port;
    v2->_port = v5;

    dword_100026558 = [(NSMachPort *)v2->_port machPort];
    [(NSMachPort *)v2->_port setDelegate:v2];
    v7 = +[NSRunLoop mainRunLoop];
    [v7 addPort:v2->_port forMode:NSDefaultRunLoopMode];
  }

  return v2;
}

- (void)dealloc
{
  dword_100026558 = 0;
  v3 = +[NSRunLoop mainRunLoop];
  [v3 removePort:self->_port forMode:NSDefaultRunLoopMode];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allKeys = [(NSMutableDictionary *)self->_handlers allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        signal([*(*(&v10 + 1) + 8 * v8) intValue], 0);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = self;
  v9.super_class = TIDiagnosticHelper;
  [(TIDiagnosticHelper *)&v9 dealloc];
}

- (void)handleMachMessage:(void *)message
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  handlers = self->_handlers;
  v4 = [NSNumber numberWithInt:*(message + 5), 0];
  v5 = [(NSMutableDictionary *)handlers objectForKey:v4];

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))();
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)registerForSignal:(int)signal withBlock:(id)block
{
  v4 = *&signal;
  blockCopy = block;
  v7 = [NSNumber numberWithInt:v4];
  v8 = [(NSMutableDictionary *)self->_handlers objectForKey:v7];
  if (!v8)
  {
    v8 = +[NSMutableArray array];
    [(NSMutableDictionary *)self->_handlers setObject:v8 forKey:v7];
    signal(v4, sub_100003664);
  }

  v9 = [blockCopy copy];
  v10 = objc_retainBlock(v9);
  [v8 addObject:v10];

  v14[0] = v7;
  v11 = objc_retainBlock(v9);
  v14[1] = v11;
  v12 = [NSArray arrayWithObjects:v14 count:2];

  return v12;
}

- (void)unregisterSignalHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [handlerCopy objectAtIndex:0];
  v5 = [(NSMutableDictionary *)self->_handlers objectForKey:?];
  v6 = [handlerCopy objectAtIndex:1];

  [v5 removeObject:v6];
  if (![v5 count])
  {
    [(NSMutableDictionary *)self->_handlers removeObjectForKey:v7];
    signal([v7 intValue], 0);
  }
}

@end