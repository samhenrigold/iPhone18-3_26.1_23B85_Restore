@interface LNActionKVCAdapter
- (LNActionKVCAdapter)initWithAction:(id)action;
- (id)valueForKey:(id)key;
@end

@implementation LNActionKVCAdapter

- (id)valueForKey:(id)key
{
  v19 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  parameters = [(LNAction *)self->_action parameters];
  v6 = [parameters countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(parameters);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqual:keyCopy];

        if (v11)
        {
          value = [v9 value];
          v6 = kvcValueForValue(value);

          goto LABEL_11;
        }
      }

      v6 = [parameters countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (LNActionKVCAdapter)initWithAction:(id)action
{
  actionCopy = action;
  v9.receiver = self;
  v9.super_class = LNActionKVCAdapter;
  v6 = [(LNActionKVCAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_action, action);
  }

  return v7;
}

@end