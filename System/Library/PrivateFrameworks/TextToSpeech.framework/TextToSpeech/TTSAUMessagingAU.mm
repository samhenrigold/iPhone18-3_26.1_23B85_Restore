@interface TTSAUMessagingAU
- (TTSFirstPartyAudioUnit)owningAudioUnit;
- (id)callAudioUnit:(id)unit;
@end

@implementation TTSAUMessagingAU

- (id)callAudioUnit:(id)unit
{
  v28 = *MEMORY[0x1E69E9840];
  unitCopy = unit;
  v5 = [unitCopy objectForKeyedSubscript:@"TTSMessageChannelMessageSelectorKey"];
  if (v5 && (+[TTSAUMessagingHost _validSelectorsForProtocol](TTSAUMessagingHost, "_validSelectorsForProtocol"), v6 = objc_claimAutoreleasedReturnValue(), [v6 objectForKeyedSubscript:v5], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [unitCopy objectForKeyedSubscript:@"TTSMessageChannelMessageArgumentsKey"];
    v9 = NSSelectorFromString(v5);
    owningAudioUnit = [(TTSAUMessagingAU *)self owningAudioUnit];
    v11 = [owningAudioUnit methodSignatureForSelector:v9];

    v12 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v11];
    [v12 setSelector:v9];
    owningAudioUnit2 = [(TTSAUMessagingAU *)self owningAudioUnit];
    [v12 setTarget:owningAudioUnit2];

    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = v8;
    v15 = [v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      v18 = 2;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v26 = *(*(&v22 + 1) + 8 * i);
          [v12 setArgument:&v26 atIndex:{v18++, v22}];
        }

        v16 = [v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v16);
    }

    [v12 retainArguments];
    [v12 invoke];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v26 = 0;
    if (*[v11 methodReturnType] != 118)
    {
      [v12 getReturnValue:&v26];
      if (v26)
      {
        [dictionary setObject:v26 forKeyedSubscript:@"TTSMessageChannelMessageReturnValueKey"];
      }
    }
  }

  else
  {
    dictionary = MEMORY[0x1E695E0F8];
  }

  return dictionary;
}

- (TTSFirstPartyAudioUnit)owningAudioUnit
{
  WeakRetained = objc_loadWeakRetained(&self->_owningAudioUnit);

  return WeakRetained;
}

@end