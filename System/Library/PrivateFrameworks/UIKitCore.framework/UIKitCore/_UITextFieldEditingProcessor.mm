@interface _UITextFieldEditingProcessor
- (_UITextFieldEditingProcessorDelegate)delegate;
- (id)beginEditingWithTextStorage:(id)storage;
- (id)overridingEditingAttributesForAttributes:(id)attributes withOverrides:(id)overrides;
@end

@implementation _UITextFieldEditingProcessor

- (id)beginEditingWithTextStorage:(id)storage
{
  storageCopy = storage;
  delegate = [(_UITextFieldEditingProcessor *)self delegate];
  v6 = [delegate editingProcessorOverridingEditingAttributes:self];

  allKeys = [v6 allKeys];
  if ([v6 count])
  {
    v8 = [[_UITextFieldEditingToken alloc] initWithTextStorage:storageCopy attributeNames:allKeys];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60___UITextFieldEditingProcessor_beginEditingWithTextStorage___block_invoke;
    v11[3] = &unk_1E7126240;
    v11[4] = self;
    v11[5] = v6;
    v11[6] = v8;
    [storageCopy coordinateAccess:v11];
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)overridingEditingAttributesForAttributes:(id)attributes withOverrides:(id)overrides
{
  v29 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  overridesCopy = overrides;
  v7 = [overridesCopy objectForKeyedSubscript:*off_1E70EC920];
  v8 = [overridesCopy objectForKeyedSubscript:*off_1E70EC918];
  if (v7 | v8)
  {
    v23 = attributesCopy;
    v9 = objc_opt_new();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v22 = overridesCopy;
    allKeys = [overridesCopy allKeys];
    v11 = [allKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(allKeys);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          if (!v7 || (v16 = objc_msgSend_isEqualToString_(*(*(&v24 + 1) + 8 * i)), v17 = v7, (v16 & 1) == 0))
          {
            if (!v8)
            {
              continue;
            }

            isEqualToString = objc_msgSend_isEqualToString_(v15);
            v17 = v8;
            if (!isEqualToString)
            {
              continue;
            }
          }

          [v9 setObject:v17 forKeyedSubscript:v15];
        }

        v12 = [allKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v12);
    }

    attributesCopy = v23;
    if (v23)
    {
      v19 = [v23 objectForKeyedSubscript:@"_UILastStoredDefaultTextAttributesName"];

      if (!v19)
      {
        [v9 setObject:v23 forKeyedSubscript:@"_UILastStoredDefaultTextAttributesName"];
      }
    }

    v20 = [v9 copy];

    overridesCopy = v22;
  }

  else
  {
    v20 = MEMORY[0x1E695E0F8];
  }

  return v20;
}

- (_UITextFieldEditingProcessorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end