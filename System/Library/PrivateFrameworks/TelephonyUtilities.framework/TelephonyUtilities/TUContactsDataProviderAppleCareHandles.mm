@interface TUContactsDataProviderAppleCareHandles
- (BOOL)contains:(id)contains;
- (TUContactsDataProviderAppleCareHandles)init;
- (void)loadHandles;
@end

@implementation TUContactsDataProviderAppleCareHandles

- (TUContactsDataProviderAppleCareHandles)init
{
  v5.receiver = self;
  v5.super_class = TUContactsDataProviderAppleCareHandles;
  v2 = [(TUContactsDataProviderAppleCareHandles *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TUContactsDataProviderAppleCareHandles *)v2 loadHandles];
  }

  return v3;
}

- (void)loadHandles
{
  v22 = *MEMORY[0x1E69E9840];
  tu_defaults = [MEMORY[0x1E695E000] tu_defaults];
  v4 = [tu_defaults stringForKey:@"appleCareHandles"];

  if (!v4)
  {
    mEMORY[0x1E69A53F0] = [MEMORY[0x1E69A53F0] sharedInstance];
    v6 = [mEMORY[0x1E69A53F0] objectForKey:@"appleCareHandles"];

    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v4 = @"+18006927753,+18006927753,+558007610867,+864006272273,+864006668800,+448000391010,+85221120099, +852800908988,+3618830300,+82267126700,+82803334000,+82803308877,+74959612426,+74959612427,+886800095988,+886800020021";
    }
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [(__CFString *)v4 componentsSeparatedByString:@", ", 0];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([v13 length])
        {
          v14 = [TUHandle normalizedHandleWithDestinationID:v13];
          [v7 addObject:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = [v7 copy];
  appleCareHandles = self->_appleCareHandles;
  self->_appleCareHandles = v15;
}

- (BOOL)contains:(id)contains
{
  containsCopy = contains;
  appleCareHandles = [(TUContactsDataProviderAppleCareHandles *)self appleCareHandles];
  v6 = [appleCareHandles containsObject:containsCopy];

  return v6;
}

@end