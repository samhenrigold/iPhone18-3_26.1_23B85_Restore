@interface NRAccountsManager
+ (id)sharedInstance;
- (BOOL)_addCompletionBlock:(id)block;
- (NRAccountsManager)init;
- (void)fireCompletionBlocks;
- (void)reset;
- (void)signOutAccountsWithKill:(BOOL)kill queue:(id)queue completion:(id)completion;
@end

@implementation NRAccountsManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005D18;
  block[3] = &unk_1001756A8;
  block[4] = self;
  if (qword_1001B3708 != -1)
  {
    dispatch_once(&qword_1001B3708, block);
  }

  v2 = qword_1001B3700;

  return v2;
}

- (NRAccountsManager)init
{
  v3.receiver = self;
  v3.super_class = NRAccountsManager;
  result = [(NRAccountsManager *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (BOOL)_addCompletionBlock:(id)block
{
  blockCopy = block;
  completions = self->_completions;
  if (!completions)
  {
    v6 = +[NSMutableArray array];
    v7 = self->_completions;
    self->_completions = v6;
  }

  if (blockCopy)
  {
    v8 = self->_completions;
    v9 = objc_retainBlock(blockCopy);
    [(NSMutableArray *)v8 addObject:v9];
  }

  return completions == 0;
}

- (void)fireCompletionBlocks
{
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_100006064;
  v24[4] = sub_100006074;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100006064;
  v22 = sub_100006074;
  v23 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v13 = sub_10000607C;
  v14 = &unk_1001756D0;
  selfCopy = self;
  v16 = v24;
  v17 = &v18;
  v3 = v12;
  os_unfair_lock_lock_with_options();
  v13(v3);

  os_unfair_lock_unlock(&self->_lock);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4 = v19[5];
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v26 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v8 + 1) + 8 * v7) + 16))(*(*(&v8 + 1) + 8 * v7));
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v26 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(v24, 8);
}

- (void)signOutAccountsWithKill:(BOOL)kill queue:(id)queue completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (void)reset
{
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_100006064;
  v24[4] = sub_100006074;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100006064;
  v22 = sub_100006074;
  v23 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v13 = sub_100006368;
  v14 = &unk_1001756D0;
  selfCopy = self;
  v16 = v24;
  v17 = &v18;
  v3 = v12;
  os_unfair_lock_lock_with_options();
  v13(v3);

  os_unfair_lock_unlock(&self->_lock);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4 = v19[5];
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v26 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v8 + 1) + 8 * v7) + 16))(*(*(&v8 + 1) + 8 * v7));
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v26 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(v24, 8);
}

@end