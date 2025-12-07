@interface _PSMailUtils
+ (id)recipientsForMailLabel:(id)label contactResolver:(id)resolver;
+ (id)recipientsForRecipientString:(id)string contactResolver:(id)resolver;
@end

@implementation _PSMailUtils

+ (id)recipientsForMailLabel:(id)label contactResolver:(id)resolver
{
  v25 = *MEMORY[0x1E69E9840];
  resolverCopy = resolver;
  v6 = [label objectForKeyedSubscript:@"mailRecipients"];
  array = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [_PSRecipient alloc];
        identifier = [v12 identifier];
        handle = [v12 handle];
        v16 = [resolverCopy resolveContact:v12];
        v17 = [(_PSRecipient *)v13 initWithIdentifier:identifier handle:handle contact:v16];

        [array addObject:v17];
      }

      v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  return array;
}

+ (id)recipientsForRecipientString:(id)string contactResolver:(id)resolver
{
  v23 = *MEMORY[0x1E69E9840];
  resolverCopy = resolver;
  v6 = [MEMORY[0x1E69978D0] recipientIdentifiersFromMobileMailConversationId:string];
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [_PSRecipient alloc];
        v15 = [resolverCopy resolveContactIfPossibleFromContactIdentifierString:{v13, v18}];
        v16 = [(_PSRecipient *)v14 initWithIdentifier:v13 handle:v13 contact:v15];

        [array addObject:v16];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  return array;
}

@end