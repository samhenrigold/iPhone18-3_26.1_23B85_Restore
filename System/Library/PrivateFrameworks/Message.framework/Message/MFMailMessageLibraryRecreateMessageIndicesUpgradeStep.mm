@interface MFMailMessageLibraryRecreateMessageIndicesUpgradeStep
+ (BOOL)runWithConnection:(id)connection;
@end

@implementation MFMailMessageLibraryRecreateMessageIndicesUpgradeStep

+ (BOOL)runWithConnection:(id)connection
{
  v14 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [&unk_1F27754F0 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(&unk_1F27754F0);
        }

        if (([connectionCopy executeStatementString:*(*(&v9 + 1) + 8 * i) errorMessage:@"Adding index"] & 1) == 0)
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [&unk_1F27754F0 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

@end